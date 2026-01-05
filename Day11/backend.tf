terraform {
  backend "s3" {
    bucket       = "terraform-state-1229"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = "true"
    encrypt      = true
  }
}