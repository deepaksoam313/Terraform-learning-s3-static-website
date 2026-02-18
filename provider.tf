terraform {
  backend "s3" {
    bucket         = "deepak-terraform-state"
    key            = "static-site/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}


provider "aws" {
  region = var.region
}
