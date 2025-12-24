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
# backend configuration
terraform {
  backend "s3" {
    bucket       = "terraform-state-24122025"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = "true"
    encrypt      = true
  }
}
resource "aws_s3_bucket" "My_bucket" {
  bucket = "vinay-tf-bucket-24122025"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}
# Enable versioning
resource "aws_s3_bucket_versioning" "tf_state_versioning" {
  bucket = aws_s3_bucket.My_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
# Enable server-side encryption (SSE-S3)
resource "aws_s3_bucket_server_side_encryption_configuration" "tf_state_encryption" {
  bucket = aws_s3_bucket.My_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

