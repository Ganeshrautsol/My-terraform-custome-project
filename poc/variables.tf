variable "aws_region" {
  default = "us-east-1"
}

variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "environment" {
  default = "poc"
}

variable "projectname" {
  default = "JazzPharma"
}

#variable "vpc_cidr" {
#  description = "VPC CIDR Range"
#  type = string
#}

#variable "subnet_cidr" {
#    description = "Subnet CIDRS"
#    type = list(string)
#}
