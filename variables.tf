variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}


variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}


variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}


variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
  default     = "10.0.2.0/24"
}


variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
  default     = 3
}


variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}


variable "key_pair_name" {
  description = "Existing EC2 key pair name"
  type        = string
  default     = "windows-1"
}