# Terraform configuration block
# This block specifies the backend configuration for storing Terraform state remotely in an S3 bucket.

terraform {
  # Use the S3 backend
  backend "s3" {
    # Specify the name of the S3 bucket to store the state file
    bucket         = "filza-infra-tf10-state" 
    # Specify the filename of the state file within the bucket
    key            = "terraform.tfstate"
    # Specify the AWS region where the S3 bucket is located
    region         = "us-east-1"
  }
}

