variable "region" {}
variable "Project_name" {
  default = "Project ALPHA Resource"
}
variable "bucket_name" {}

variable "default_tags" {
  default = {
    company    = "Techcorp"
    managed_by = "terraform"
  }
}
variable "environment_tags" {
  default = {
    environment = "production"
    cost_center = "cc-123"
  }
}

variable "allowed_port" {
  default = "80,443,8080,3306"
}

variable "instance_size" {
  default = {
    dev  = "t2.micro"
    test = "t3.small"
    prod = "t3.large"
  }
}
variable "environment" {
  default = "prod"
  
}