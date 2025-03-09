provider "aws" {
  region = "us-east-1"  # Change this to your preferred region
}

# Configure the backend to store the state file in the S3 bucket
terraform {
  backend "s3" {
    bucket         = "s3-bucket-terraform-ramya"  # This will be replaced by the actual bucket name from remote_state/main.tf
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"  # Same region as your S3 bucket
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

# EC2 instance creation
resource "aws_instance" "example" {
  ami           = "ami-04b4f1a9cf54c11d0"  # Replace with an appropriate AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "MyEC2Instance"
  }
}

