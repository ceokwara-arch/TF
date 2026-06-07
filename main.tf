provider "aws" {
  region = "eu-west-2"
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "my-instance" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
}
