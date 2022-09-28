provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "terraform_ec2_example" {
  ami =
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform Instance"
  }
}
