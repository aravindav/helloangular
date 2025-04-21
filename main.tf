# configured aws provider and backend with proper credentials
provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket         = "av-jenkins-terraform-s3-demo-angular01"
    key            = "terraform-statefile"
    region         = "us-east-1"
    dynamodb_table = "av-jenkins-terraform-dynamodb-demo-angular01"
  }
}
# Define the AWS instance
resource "aws_instance" "this" {
  ami           = "ami-084568db4383264d4" # us-east-1. Get this value from the EC2 -> AMI ID section
  instance_type = "t2.micro"
  key_name      = "JenkinsEC2KeyPair"
  tags = {
    Name = "Terraform-Instance"
  }
}
