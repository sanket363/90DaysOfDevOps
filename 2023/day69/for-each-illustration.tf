variable "users" {
  type = map(string)
  default = {
    "user1" = "password1"
    "user2" = "password2"
    "user3" = "password3"
  }
}

resource "aws_iam_user" "example" {
  for_each = var.users

  name = each.key

  tags = {
    Password = each.value
  }
}
