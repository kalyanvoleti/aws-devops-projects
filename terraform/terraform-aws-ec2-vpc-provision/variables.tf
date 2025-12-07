variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
  validation {
    condition     = can(cidrnetmask(var.vpc_cidr))
    error_message = "vpc_cidr must be a valid CIDR block."
  }
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
  validation {
    condition     = can(cidrnetmask(var.public_subnet_cidr))
    error_message = "public_subnet_cidr must be a valid CIDR block."
  }
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "enable_ssh" {
  type    = bool
  default = false
}

variable "key_name" {
  type    = string
  default = null
}
