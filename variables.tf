variable "aws_region" {
  type        = string
  description = "AWS region to deploy to"
}

variable "role_arn" {
  type        = string
  description = "IAM Role to assume"
}

variable "s3_bucket" {
  type        = string
  description = "S3 bucket for backend"
}

variable "s3_key" {
  type        = string
  description = "S3 key (path) for state file"
}

variable "dynamodb_table" {
  type        = string
  description = "DynamoDB table for locking"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "key_name" {
  type        = string
  description = "Name of the SSH key pair"
}
