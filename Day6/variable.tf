variable "region" {
  description = "AWS region"
  type        = string
}

variable "Environment" {
  description = "Deployment environment"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}