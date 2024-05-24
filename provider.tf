terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# configure aws provider

provider "aws" {
  region = "ap-south-1"
}

