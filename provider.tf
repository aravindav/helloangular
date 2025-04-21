provider "aws" {
  region = var.aws_region

  assume_role {
    role_arn     = var.role_arn
    session_name = "terraform-sts"
  }
}

terraform {
  backend "s3" {
    bucket         = "rs-terraform-statefile01"
    key            = "terraform-statefile"
    region         = "us-west-1"
    dynamodb_table = "rs-terraform-statetable"
    # role_arn is not a supported argument in backend config
  }
}
