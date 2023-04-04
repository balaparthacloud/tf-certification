provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}

resource "aws_s3_bucket" "creates3" {
  bucket_prefix = var.bucketprefix

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.creates3.id
  versioning_configuration {
    status = var.versioning
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.creates3.id
  acl    = "private"
}