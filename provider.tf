terraform {
  backend "s3" {
    bucket = "makenew-terraform-state-0"
    dynamodb_table = "makenew-terraform-state-0"
    key = "root.tfstate"
    region = "us-east-1"
    encrypt = "true"
  }
}

provider "aws" {
  region = "us-east-1"
}
