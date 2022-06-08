terraform {
  required_providers {
    hcp = {
      source = "hashicorp/hcp"
      version = "0.30.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}