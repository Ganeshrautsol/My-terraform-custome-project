variable "vpc_cidr" {
  description = "VPC CIDR Range"
  default = "192.168.0.0/16"
  type = string
}

variable "subnet_cidr" {
    description = "Subnet CIDRS"
    type = list(string)
    default = [ "192.168.0.0/20", "192.168.16.0/20"]
}

variable "subnet_names" {
    description = "Subnet names"
    type = list(string)
    default = [ "PublicSubnet1", "PublicSubnet2" ]
}
