variable "aws_region" {
  description = "AWS region or pseudo-region for S3-compatible storage"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "Access key for S3-compatible storage"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "Secret key for S3-compatible storage"
  type        = string
  sensitive   = true
}