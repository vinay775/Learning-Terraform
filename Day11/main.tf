provider "aws" {
  region = var.region
}
locals {
  formatted_project_name = lower(replace(var.Project_name, " ", "-"))
  new_tag                = merge(var.default_tags, var.environment_tags)
  formatted_bucket_name  = substr(lower(var.bucket_name), 0, 63)

  instance_size=lookup(var.instance_size, var.environment, "t2.micro")
  
  
  port_list = split(",", var.allowed_port)
  sg_rules = [for i in local.port_list :
    {
      from_port = tonumber(i)
      to_port   = tonumber(i)
      protocol  = "tcp"

    }
  ]



}

resource "aws_s3_bucket" "Example" {
  bucket = local.formatted_bucket_name
  tags   = local.new_tag
}