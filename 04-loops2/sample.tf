provider "aws" {}


variable "instances"{
  default={
    frountend={
      instance_type="t3.small"

      }
    catalogue={
      instance_type="t3.small"
    }
  }
}

resource "aws_instance" "web" {
  for_each = var.instances
  ami           = "ami-09c813fb71547fc4f"
  instance_type = each.value["intance_type"]

  tags = {
    Name = each.key
  }
}