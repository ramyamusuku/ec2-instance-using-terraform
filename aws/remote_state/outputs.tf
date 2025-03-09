output "s3_bucket_name_terraform" {
  value       = aws_s3_bucket.terraform_state-ramya.id
  description = "The NAME of the S3 bucket"
}

output "s3_bucket_arn_terraform" {
  value       = aws_s3_bucket.terraform_state-ramya.arn
  description = "The ARN of the S3 bucket"
}

output "s3_bucket_region_terraform" {
  value       = aws_s3_bucket.terraform_state-ramya.region
  description = "The REGION of the S3 bucket"
}

output "dynamodb_table_name_terraform" {
  value       = aws_dynamodb_table.terraform_lock.name
  description = "The ARN of the DynamoDB table"
}

output "dynamodb_table_arn_terraform" {
  value       = aws_dynamodb_table.terraform_lock.arn
  description = "The ARN of the DynamoDB table"
}
