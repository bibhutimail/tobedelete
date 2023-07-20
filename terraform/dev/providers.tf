terraform {
  required_providers {
    aws = {
      version = "5.8.0"
    }
  }
}

provider "aws" {
  region = var.region_id
}