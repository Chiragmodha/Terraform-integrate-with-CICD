provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraformtfstateupdatefile"
    key = "state"
    region = "us-east-1"
    dynamodb_table = "terraformstateupdate"
  }
}