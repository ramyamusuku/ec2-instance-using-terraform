provider "aws" {
  region = "ap-northeast-1"  # Change this to your preferred region
}

# S3 bucket for Terraform state
resource "aws_s3_bucket" "terraform_state-ramya" {
  bucket = "s3-bucket-terraform-ramya"  # Replace with a globally unique bucket name
  acl    = "private"
}

# DynamoDB table for state locking
resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  hash_key       = "LockID"
  read_capacity  = 5
  write_capacity = 5
  attribute {
    name = "LockID"
    type = "S"
  }
}

output "s3_bucket_name" {
  value = aws_s3_bucket.terraform_state-ramya.bucket
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_lock.name
}
