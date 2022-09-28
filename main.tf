provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "terraform_ec2_example" {
  ami = "ami-062f79c1d054dd995"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform Instance"
  }
}
