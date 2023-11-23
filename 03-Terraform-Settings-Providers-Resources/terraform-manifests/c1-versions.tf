# Terraform Block
terraform {
  #required_version = "~> 0.14" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_version = ">= 1.0.0" 
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 3.0"
      version = ">= 4.65"
    }
  } 
}  
# Provider Block
provider "aws" {
  region = "us-east-1"
}

/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/

resource "aws_vpc" "name" {
  
}
resource "aws_instance" "name" {
  instance_type = "t2.micro"
  ami = "ami-0742b4e673072066f"
  tags = {
    "Name" = "EC2 Demo"
  }

}

resource "aws_eks_cluster" "name" {
  
}