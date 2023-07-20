# modules/ec2_instance/variables.tf

variable "ami" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
}

variable "vpc_id" {
  description = "VPC ID where the EC2 instance will be launched"
}

variable "security_group_id" {
  description = "Security Group ID for the EC2 instance"
  
}