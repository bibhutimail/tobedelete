# modules/vpc/main.tf

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr
}

# output "vpc_id" {
#   value = aws_vpc.main.id
# }

output "subnet_id" {
  value = aws_subnet.main.id
}
