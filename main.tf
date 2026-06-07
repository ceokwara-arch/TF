provider "aws" {
region = "eu-west-2"
}
resource "aws_instance" "my-instance" {
ami = data.external.latest_ami.result.ImageId
instance_type = "t2.micro"
}
