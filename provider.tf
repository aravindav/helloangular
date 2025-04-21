provider "aws" {
  region = var.aws_region

  assume_role {
    role_arn     = var.role_arn
    session_name = "terraform-sts"
  }
}

terraform {
  backend "s3" {
    bucket         = var.s3_bucket
    key            = var.s3_key
    region         = var.aws_region
    role_arn       = var.role_arn
    dynamodb_table = var.dynamodb_table
  }
}
