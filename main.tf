provider "aws" {
region = "eu-west-2"
}
resource "aws_instance" "server" {
ami = "ami-0fb653ca2d3203ac1"
instance_type = "t2.micro"
}

