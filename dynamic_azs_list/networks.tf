resource "aws_vpc" "lcchua-tf-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
output "vpc-id" {
  description = "stw vpc"
  value       = aws_vpc.lcchua-tf-vpc.id
}

# Public Subnets
resource "aws_subnet" "lcchua-tf-public-subnet" {
  count                   = var.subnets_count.public
  vpc_id                  = aws_vpc.lcchua-tf-vpc.id
  cidr_block              = "10.0.${count.index}.0/24"
  availability_zone       = element(local.availability_zones, count.index)  // add 1 subnet per az
  map_public_ip_on_launch = true
}
output "public-subnet" {
  description = "stw subnet public subnet"
  value       = aws_subnet.lcchua-tf-public-subnet[*].id
}
output "public-subnet_az" {
  description = "stw public subnet az"
  value       = aws_subnet.lcchua-tf-public-subnet[*].availability_zone
}

# Private Subnets
resource "aws_subnet" "lcchua-tf-private-subnet" {
  count             = var.subnets_count.private
  vpc_id            = aws_vpc.lcchua-tf-vpc.id
  cidr_block        = "10.0.${count.index + var.subnets_count.public}.0/24"
  availability_zone = element(local.availability_zones, count.index)  # add 1 subnet per az
  #map_public_ip_on_launch = true
}
output "private-subnet" {
  description = "stw subnet private subnet"
  value       = aws_subnet.lcchua-tf-private-subnet[*].id
}
output "private-subnet_az" {
  description = "stw public subnet az"
  value       = aws_subnet.lcchua-tf-private-subnet[*].availability_zone
}