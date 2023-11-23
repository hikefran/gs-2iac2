# PROVIDER
terraform {

  required_version = "~> 1.6.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55"
    }
  }

  backend "s3" {
    bucket         = "tf-site-ec2-elb-state-v1"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-site-ec2-elb-state-v1"
    region         = "us-east-1"
  }

}

provider "aws" {
  region                   = "us-east-1"
}