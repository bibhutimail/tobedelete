# modules/vpc/outputs.tf

output "vpc_id" {
  value = aws_vpc.main.id
}

output "custom_subnet_id" {
  value = aws_subnet.main.id
}
