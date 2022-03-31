variable "region" {
  type        = string
  description = "AWS region"
}

#variable "azs" {
#  type = list(string)
#  default = ["ap-south-1a",
#    "ap-south-1b",
#    "ap-south-1c"]
#}

variable "vpc_name" {
  type        = string
  default     = ""
  description = "VPC Name"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "VPC CIDR"
}

variable "vpc_private_subnets" {
  type        = list(string)
  default     = []
  description = "List of private subnets, i.e. [\"10.0.1.0/24\", \"10.0.2.0/24\", \"10.0.3.0/24\"]"
}

variable "vpc_public_subnets" {
  type        = list(string)
  default     = []
  description = "List of public subnets, i.e. [\"10.0.101.0/24\", \"10.0.102.0/24\", \"10.0.103.0/24\"]"
}

variable "instance_type" {
  type = string
}

variable "ami" {
  type = string
}

variable "ec2_count" {
  type = string
}

variable "environment" {
  type = list(string)
  default = ["dev",
    "sta",
    "acc",
    "prod"]
}

variable "ssh_key_name" {
  type        = string
  default     = "an-key"
  description = "SSH Key name"
}

variable "ssh_key_path" {
  type        = string
  default     = "~/.ssh/id_rsa.pub"
  description = "Default path to ssh key"
}

variable "load_balancer" {
  type = string
  # default     = ""
  description = "Load balancer name, i.e. lb, required for SSL and DNS"
}

variable "enable_ipv6" {
  type        = bool
  default     = false
  description = "If IPV6 should be enabled"
}