terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.51.0"
    }
  }

  backend "s3" {
    bucket       = "akhil8074"
    key          = "remote-state-demo.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true # Enables native S3 state locking (Terraform 1.10+)
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}