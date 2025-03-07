provider "aws" {
  region = "us-east-1"  # Specify your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Make sure the bucket name is globally unique
  acl    = "private"  # Access control list, you can use "private", "public-read", etc.

  tags = {
    Name        = "MyBucket"
    Environment = "Production"
  }
}
