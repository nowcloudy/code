variable "aws_access_key" {
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
}

variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  default     = "10.0.0.0/24"
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ec2_instance_count" {
  description = "Number of EC2 instances"
  default     = 2
}

variable "ebs_volume_size" {
  description = "Size (in GB) of the EBS volumes"
  default     = 10
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  default     = "example-bucket"
}
