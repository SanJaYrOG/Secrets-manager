terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "me-south-1"
}

# resource "aws_secretsmanager_secret_version" "creds" {
#     secret_id = aws_secretsmanager_secret_version.creds.id
  
# }

# data "aws_secretsmanager_secret" "by-arn" {
#   arn = "arn:aws:secretsmanager:me-south-1:978222968597:secret:SanjaySecret-1-CrTLFe"
# }

resource "aws_instance" "secrets" {
  ami = "ami-0ef669c57b73af73b"
  instance_type = "t3.small"
  subnet_id = "subnet-09609bc609ea228a6"
  tags = {
    Name = "sanjay"
  }
}


