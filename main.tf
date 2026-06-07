provider "aws" {
region = "eu-west-2"
}
resource "aws_instance" "example" {
ami = "amazon_linux"
instance_type = "t2.micro"
}

