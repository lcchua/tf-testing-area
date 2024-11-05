variable "env" {
  description = "The env of the S3 bucket"
  type        = string
  default     = "dev"
}

variable "vpc_name" {
  description = "The VPC Name to use"
  type        = string
  default     = "ce7-grp-1-clc-vpc"
}

variable "sg_name" {
  description = "Security group for http-https-ssh-mysql"
  type        = string
  default     = "ce7-grp-1-clc-sg-http-https-ssh"
}

variable "ec2_name" {
  description = "Name of EC2"
  type        = string
  default     = "ce7-grp-1-clc-ec2-instance"
}

variable "instance_type" {
  description = "EC2 Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Pathname of EC2 Key Pair"
  type        = string
  default     = "ce7-grp-1-20241104"
}
