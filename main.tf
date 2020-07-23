
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
resource "aws_s3_bucket" "bucket08222_anand2" {
  bucket = "user-bucket-anand01082gfjhf22"
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

