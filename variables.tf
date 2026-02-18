variable "region" {
  default = "ap-south-1"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}

variable "instance_type" {
  default = "t2.micro"
}

variable "my_name" {
  description = "Your name for website"
  type        = string
}
