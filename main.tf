# configured aws provider and backend with proper credentials
provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::638067550830:role/jenkins-terraform-role" # This value is from IAM ->Roles-> copy the ARN
    session_name = "terraform-sts"
  }
}
terraform {
  backend "s3" {
    bucket         = "av-jenkins-terraform-s3-demo-angular01"
    key            = "terraform-statefile"
    region         = "us-east-1"
    role_arn       = "arn:aws:iam::638067550830:role/jenkins-terraform-role" # This value is from IAM ->Roles-> copy the ARN
    dynamodb_table = "av-jenkins-terraform-dynamodb-demo-angular01"
  }
}
# Define the AWS instance
resource "aws_instance" "this" {
  ami           = "ami-084568db4383264d4" # us-east-1. Get this value from the EC2 -> AMI ID section
  instance_type = "t2.micro"
  key_name      = "awskeypair"
  tags = {
    Name = "Terraform-Instance"
  }
}
