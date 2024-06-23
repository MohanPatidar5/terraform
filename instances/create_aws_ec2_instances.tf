terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.55.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "XXXXXXXXXXXXXX" //replace with actual access key
  secret_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXX" //replace with actual secret key
}

resource "aws_instance" "web" {
//amazon machine image(ami) id need to pass
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform_ec1"
  }
}
