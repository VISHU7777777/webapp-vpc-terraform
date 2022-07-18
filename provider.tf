terraform {
  backend "s3" {
     bucket = "webapp-1234"
     key    = "terraform.tfstate"
     region = "ap-south-1"    
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.22.0"
    }
  }
}

#congigure the aws provider
provider "aws" {
  region = "ap-south-1"
}
