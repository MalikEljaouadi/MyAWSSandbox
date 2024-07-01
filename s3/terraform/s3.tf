resource "aws_s3_bucket" "my-terraform-testing-bucket-melj" {
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
