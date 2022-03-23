variable "region" {
  default = "ap-south-1"
}

variable "azs" {
  type = list(string)
  default = ["ap-south-1a",
    "ap-south-1b",
    "ap-south-1c"]
}

variable "eks_worker_instance_type" {
  default = "t2.micro"
}

variable "app_environment" {
  type = list(string)
  default = ["dev",
    "sta",
    "acc",
    "prod"]
}
