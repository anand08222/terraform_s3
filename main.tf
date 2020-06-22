
terraform {
  backend "s3" {
    bucket = "terraform-bucket-anand2"
    key    = "myapp/dev/terraform.tfstate"
    region = "us-east-1"
 }
}

{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:ListBucket",
      "Resource": "arn:aws:s3:::terraform-bucket-anand2"
    },
    {
      "Effect": "Allow",
      "Action": ["s3:GetObject", "s3:PutObject"],
      "Resource": "arn:aws:s3:::terraform-bucket-anand2/myapp/dev/terraform.tfstate"
    }
  ]
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
 
