variable "region" {}
variable "Environment" {}
variable "ami_id" {}
variable "allowed_vm_type" {
  description = "EC2 instance type"
  type        = list(string)
}
variable "instance_count" {}
variable "monitoring_enabled" {
  default = true
}
variable "associate_public_ip_address" {
  default = true
}
variable "cidr_block" {
  description = "List of CIDR blocks"
  type        = list(string)
}
variable "tags" {
  type = map(string)
  default = {
    Environment = "Dev"
    Name        = "dev-instance"
    created_by  = "terraform"
  }
}
variable "ingress_rule" {
  type    = tuple([number, string, number])
  default = [80, "tcp", 80]

}