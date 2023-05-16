variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}
