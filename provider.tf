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
  // secret_key = "G/akrL9yn7mxuh5SbvTPSQGNRCxFbLnc21htTWMI"
  // access_key = "AKIA47CRYU54X7SFN4DS"
}

