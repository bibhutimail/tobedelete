# terraform/dev/main.tf or terraform/uat/main.tf

terraform {
  required_version = ">= 0.13"
  backend "s3" {
    bucket = "web1-terra-state"
    key    = "terraform-state/dev/terraform.tfstate"  # For UAT, use "terraform-state/uat/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source     = "../modules/vpc"
  vpc_cidr   = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"  # Adjust for different subnets in UAT
}

module "ec2_instance" {
  source            = "../modules/ec2_instance"
  ami               = var.ami
  instance_type     = "t2.micro"  # Customize as needed
  vpc_id            = module.vpc.vpc_id
  #subnet_id         = module.vpc.subnet_id
  security_group_id =  var.security_group_id  # Use a list here
}
