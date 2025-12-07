# Fetch latest Amazon Linux 2 AMI (robust filters)
data "aws_ami" "amazon_linux2" {
  owners      = ["137112412989"] # Amazon
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Availability Zones
data "aws_availability_zones" "available" {}