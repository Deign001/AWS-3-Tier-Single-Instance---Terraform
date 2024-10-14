terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Specify the desired version range
    }
  }

  required_version = ">= 1.0" # Specify the Terraform version
}

provider "aws" {
  region = "us-west-2" # Replace with your desired AWS region
}
