provider "aws" {}

resource "aws_instance" "web" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.instance_type

  tags = {
    Name = "web"
  }
}

variable "instance_type" {}