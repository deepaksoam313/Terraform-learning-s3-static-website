terraform {
  backend "s3" {
    bucket         = "deepak-tf-state-ap-south-1-2026"
    key            = "static-site/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}


provider "aws" {
  region = var.region
}
