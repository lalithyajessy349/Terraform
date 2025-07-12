terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

 
  backend "s3" {
    bucket = "lali-remote-state"
    key    = "provisioners2"  #need to provide unique keys for each project
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }

}
provider "aws" {
  # Configuration options
}
