terraform {
  required_version = ">= 0.13"
  backend "s3" {
    bucket = "web1-terra-state"
    key    = "terraform-state/dev/terraform.tfstate"  # For UAT, use "terraform-state/uat/terraform.tfstate"
    region = "us-east-1"
  }
}