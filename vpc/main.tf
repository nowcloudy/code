variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

resource "aws_vpc" "example_vpc" {
  cidr_block = var.vpc_cidr_block
}