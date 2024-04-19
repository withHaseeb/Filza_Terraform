terraform {
  backend "s3" {
    bucket         = "filza-infra-tf10-state" 
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform_locks"
  }
}
