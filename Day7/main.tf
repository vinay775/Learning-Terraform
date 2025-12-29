provider "aws" {
  region = var.region
}
resource "aws_instance" "My-Ec2" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.allowed_vm_type[0]

  monitoring                  = var.monitoring_enabled
  associate_public_ip_address = var.associate_public_ip_address
  tags                        = var.tags
}
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_sg"
  description = "Security group to allow TLS traffic"
  tags        = var.tags
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.cidr_block[0]
  from_port         = var.ingress_rule[0]
  ip_protocol       = var.ingress_rule[1]
  to_port           = var.ingress_rule[2]
  tags              = var.tags
}
