
data "aws_availability_zones" "available" {
  state = "available"
}

# Adjust based on your region
locals {
  #availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  availability_zones = data.aws_availability_zones.available.names[*]
}

output "azs-list" {
  description = "stw availability zones in region"
  value       = data.aws_availability_zones.available.names[*]
}
