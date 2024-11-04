terraform {
  backend "s3" {
    bucket = "sctp-ce7-tfstate"
    key    = "ce7-grp-1-clc-20241104.tfstate"
    region = "us-east-1"
  }
}