provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_security_group" "example" {
  name_prefix = "example-"
  vpc_id      = aws_vpc.example.id

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_launch_configuration" "example" {
  image_id        = "ami-06e46074ae430fba6"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.example.id]
}

resource "aws_autoscaling_group" "example" {
  name                 = "example-asg"
  launch_configuration = aws_launch_configuration.example.id
  min_size             = 1
  max_size             = 3
  vpc_zone_identifier  = [aws_subnet.private.id]

  tag {
    key                 = "Name"
    value               = "example-asg"
    propagate_at_launch = true
  }
}

resource "aws_subnet" "private" {
  cidr_block          = "10.0.1.0/24"
  vpc_id              = aws_vpc.example.id
  map_public_ip_on_launch = true
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
