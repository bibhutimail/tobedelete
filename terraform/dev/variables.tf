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

variable "security_group_id" {
  description = "Security Group ID for the EC2 instance"
  
}
variable "region_id" {
  description = "Region of AWS"
}
# Add any other variables you need here.
