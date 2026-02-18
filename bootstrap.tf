variable "region" {
  default = "ap-south-1"   # Mumbai region
}

provider "aws" {
  region = var.region
}

# Terraform backend bucket
resource "aws_s3_bucket" "tf_state" {
  bucket = "deepak-terraform-state"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name = "Terraform State Bucket"
  }
}

# DynamoDB table for state locking
resource "aws_dynamodb_table" "tf_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "Terraform Lock Table"
  }
}
