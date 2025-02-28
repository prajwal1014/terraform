provider "aws" {
  region     = "ap-south-1"
  access_key = "-----------------"
  secret_key = "-------------------------------"
}

resource "aws_instance" "ex1" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  key_name      = "n2025"
  tags = {
    Name = "marcos"
  }
}