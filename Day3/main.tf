terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags={
    Name = "myvpc"
  }
}

resource "aws_s3_bucket" "My_bucket" {
  bucket = "vinay-tf-bucket-21122025-${aws_vpc.myvpc.id}"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}
