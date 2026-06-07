provider "aws" {
region = "eu-west-2"
}
resource "aws_instance" "example" {
ami = "ami-0150189e4c09ffab5"
instance_type = "t3.micro"
} 



