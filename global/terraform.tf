terraform {
  required_version = "= 0.12"
  backend "s3" {
    bucket = "makenew-terraform-state-0"
    dynamodb_table = "makenew-terraform-state-0"
    key = "environments/global.tfstate"
    region = "us-east-1"
    encrypt = "true"
  }
}

provider "aws" {
  # TODO Use version when Terraform 0.12 is released.
  # version = "~> 1.40.0"
  region = "us-east-1"
}
