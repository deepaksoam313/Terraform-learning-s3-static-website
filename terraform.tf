terraform {
    cloud {
    organization = "learn-terraform-deepak"

    workspaces {
      project = "aws-s3-static-website"
      name = "learn-terraform-aws-get-started"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.15.0"
    }
  }
  required_version = ">= 1.5"
}

