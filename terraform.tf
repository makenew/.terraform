terraform {
  required_version = "~> 0.12"
  backend "s3" {
    bucket = "makenew-terraform-state-0"
    dynamodb_table = "makenew-terraform-state-0"
    key = "root.tfstate"
    region = "us-east-1"
    encrypt = "true"
  }
}

provider "aws" {
  version = "~> 2.0"
  region = "us-east-1"
}
