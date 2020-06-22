
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
resource "aws_s3_bucket" "bucket08222_anand3" {
  bucket = "user-bucket-anand0108232"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
/* resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}*/

# Use AWS Terraform provider
provider "aws" {
  region = "us-east-1"
  }  
 
