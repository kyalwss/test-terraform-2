terraform {
  required_version = ">= 1.3.8, < 2.0.0"
  backend "s3" {
    key    = "my-state.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = "< 5.0.0"
  }
}

provider "aws" {
  region = "us-east-1"
}
