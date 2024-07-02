terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
  profile = "machine-learning"
}

resource "aws_s3_bucket" "etag-bucket-example" {
  bucket = "my-tf-etag-bucket-example"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "name" {
    bucket = aws_s3_bucket.etag-bucket-example.tags.Name
    key = "demo_file.txt"
    source = "demo_file.txt"
    etag = filemd5("demo_file.txt")
}