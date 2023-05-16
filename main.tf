terraform {
  required_version = ">= 1.0.0"
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

module "vpc" {
  source          = "./vpc"
  vpc_cidr_block  = var.vpc_cidr_block
}

module "subnet" {
  source  = "./subnet"
  vpc_id  = module.vpc.vpc_id
  subnet_cidr_block = var.subnet_cidr_block
}

module "ec2" {
  source          = "./ec2"
  subnet_id       = module.subnet.subnet_id
  instance_type   = var.ec2_instance_type
  instance_count  = var.ec2_instance_count
  ebs_volume_size = var.ebs_volume_size
}

module "s3" {
  source       = "./s3"
  bucket_name  = var.s3_bucket_name
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = var.ec2_instance_type
  subnet_id     = module.subnet.subnet_id

  root_block_device {
    volume_size = var.ebs_volume_size
  }
}

output "instance_ip" {
  value = module.ec2.instance_ip
}