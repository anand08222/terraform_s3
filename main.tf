#Terraform state will be stored in S3
terraform {
  backend "s3" {
    bucket = "terraform-bucket-anand2"
    key    = "myapp/dev/terraform.tfstate"
    region = "us-east-1"
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
 
