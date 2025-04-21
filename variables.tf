variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Name of the existing AWS key pair"
  type        = string
}

variable "bucket_name" {
  description = "Unique name for S3 bucket"
  type        = string
}
