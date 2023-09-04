terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


 provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIATVBQXCIBJQ3ETOOK"
  secret_key = "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"
}



resource "aws_instance" "Wordpressapp1" {
  ami           = "ami-0700df939e7249d03"
  instance_type = "t3.micro"
  subnet_id = "subnet-04e80f6171d2734ce"
  key_name = "rushi"

  tags = {
    Name = "Wordpressapp2"
  }
}

