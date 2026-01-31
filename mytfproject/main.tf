provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "github_demo" {
  ami           = "ami-039a8ebebdd2a1def" # Amazon Linux 2 (ap-southeast-1)
  instance_type = "t3.micro"
  count = 2

  tags = {
    Name = "GitHubActions-Terraform-Server"
  }
}
