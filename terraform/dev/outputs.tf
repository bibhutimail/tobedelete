# terraform/dev/outputs.tf or terraform/uat/outputs.tf

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.subnet_id
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

# Add any other outputs you need here.
