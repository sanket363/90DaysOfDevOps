provider "aws" {
    region = "us-east-1"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

resource "aws_instance" "web_server" {
    ami =  "ami-06e46074ae430fba6"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.web_server_security_group.id]
    user_data = file("/root/tera/user_data.sh")
}

resource "aws_security_group" "web_server_security_group" {
    name_prefix = "web-server-sg"

    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
vpc_id = aws_vpc.main.id
}

resource "aws_eip" "web_server_eip" {
    instance = aws_instance.web_server.id
}
