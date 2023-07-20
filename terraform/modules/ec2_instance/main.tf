# modules/ec2_instance/main.tf

resource "aws_instance" "main" {
  ami                    = var.ami
  instance_type          = var.instance_type
  #subnet_id              = var.subnet_id  # No longer required, as we use vpc_id instead

  vpc_security_group_ids = [var.security_group_id]  # Use a list here for security groups
}

output "instance_id" {
  value = aws_instance.main.id
}
