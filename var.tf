provider "aws" {
  region     = "ap-south-1"
  access_key = "----------------"
  secret_key = "--------------------------"
}
variable "ami_id" {
  description = "for marcos"
  type        = string
  default     = "ami-00bb6a80f01f03502"
}
resource "aws_instance" "ex1" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name      = "n2025"
  tags = {
    Name = "marcos"
  }
}

output "public_ip" {
  value = aws_instance.ex1.public_ip
}