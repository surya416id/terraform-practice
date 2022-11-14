terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main"
  }
}
resource "aws_s3_bucket" "b" {
  bucket = "surya-s3practise-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }
}