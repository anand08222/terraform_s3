
terraform {
  backend "s3" {
    bucket = "terraform-bucket-anand2"
    key    = "myapp/dev/terraform.tfstate"
    region = "us-east-1"
 }
}

resource "aws_s3_bucket" "bucket08222_anand2" {
  bucket = "user-bucket-anand0108222"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# Use AWS Terraform provider
provider "aws" {
  region = "us-east-1"
  } 

#NEW CODE
 
 resource "aws_s3_bucket" "bucket08222_anand32" {
  bucket = "user-bucket-anand018222"
  acl    = "private"

  tags = {
    Name = "My bucket"
  }
}
locals {
  s3_origin_id = "myS3Origin"
}

resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name = "${aws_s3_bucket.bucket08222_anand32.bucket_regional_domain_name}"
    origin_id   = "${local.s3_origin_id}"

    s3_origin_config {
      origin_access_identity = "origin-access-identity/cloudfront/ABCDEFG1234567"
    }
  }
}
