provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = ""
    key = "state"
    region = "us-east-1"
    dynamodb_table = ""
  }
}
