terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}
provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-053b0d53c279acc90" 
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance123"
  }
}
