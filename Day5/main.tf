provider "aws" {
  region = var.region
}

resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name        = "my-vpc"
    Environment = var.Environment
  }
}

resource "aws_instance" "My-Ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Environment = var.Environment
    Name        = "My-Ec2"
  }
}

resource "aws_s3_bucket" "My_bucket" {
  bucket = var.bucket_name
  tags = {
    Name        = "My_bucket"
    Environment = var.Environment
  }
}