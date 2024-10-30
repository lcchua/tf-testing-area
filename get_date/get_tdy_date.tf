terraform {
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
}

locals {
  current_timestamp = timestamp()
  formatted_date    = formatdate("DDMMYYYY", local.current_timestamp)
}

output "current_date" {
  value = local.formatted_date
}