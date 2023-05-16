variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

resource "aws_subnet" "example_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}