variable "subnet_id" {
  description = "ID of the subnet"
  type        = string
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id

  root_block_device {
    volume_size = 10
  }
}
