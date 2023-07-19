# terraform/dev/variables.tf or terraform/uat/variables.tf

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
}

# Add any other variables you need here.
