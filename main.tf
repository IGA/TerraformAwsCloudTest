provider "aws" {
  region = "eu-central-1"
}

# Build EC2
resource "aws_instance" "terraform_ec2_example" {
  ami = "ami-062f79c1d054dd995"
  instance_type = "t2.micro"
  
  lifecycle {
    create_before_destroy = true
  }
  
  tags = {
    Name = "Terraform Instance"
  }
}
