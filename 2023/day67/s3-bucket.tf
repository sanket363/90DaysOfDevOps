provider "aws" {
  region      = "us-east-1"
  access_key  = var.aws_access_key
  secret_key  = var.aws_secret_key
}

resource "aws_s3_bucket" "new-buck" {
  bucket = "mynewsankbucket-1234"

  cors_rule {
    allowed_methods = ["GET"]
    allowed_origins = ["*"]
  }

  tags = {
    Name = "my-new-bucket"
  }
}

resource "aws_s3_bucket_versioning" "versioning_bucket" {
  bucket = aws_s3_bucket.new-buck.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_iam_user" "s3_user" {
  name = "my-s3-user"
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.new-buck.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          AWS = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/${aws_iam_user.s3_user.name}"
        }
        Action = "s3:GetObject"
        Resource = "${aws_s3_bucket.new-buck.arn}/*"
      }
    ]
  })
}

data "aws_caller_identity" "current" {}
