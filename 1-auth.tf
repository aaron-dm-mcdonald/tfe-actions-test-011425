terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Use latest version if possible
    }
  }

  cloud {

    organization = "test-gh-actions"

    workspaces {
      name = "terraform-github-actions"
    }
  }
}

provider "aws" {
  region = "us-east-1"

}
