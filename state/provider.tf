terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

 
  backend "s3" {
    bucket = "lali-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table="lali-remote-state"
  }

}
provider "aws" {
  # Configuration options
}
