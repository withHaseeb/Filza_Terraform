terraform {
  backend "s3" {
    bucket         = "filza-infra-tf1-state" 
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}
