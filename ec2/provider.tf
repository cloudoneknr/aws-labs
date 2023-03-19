terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
  backend "s3" {
    bucket = "nr-terraform-state-bucket"
    key    = "projects/labs/aws-labs/ec2"
    region = "us-east-1"
    }
}

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::600605052115:role/devops"
  }
}