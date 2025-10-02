provider "aws" {
  region = "us-east-1"
}

# Automatically select the latest Ubuntu AMI if none is provided
data "aws_ami" "default_ubuntu" {
  count       = var.ami == "" ? 1 : 0
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical (Ubuntu)
}

# Define local tags to pass to the module
locals {
  final_tags = merge(
    {
      Name        = var.name
      Environment = var.environment
    },
    var.instance_tags
  )
}

# EC2 instance using your custom GitHub module
module "ec2_instance" {
  source = "git::https://github.com/hunterfrantz14/AWSModules"

  name                   = var.name
  ami                    = var.ami != "" ? var.ami : data.aws_ami.default_ubuntu[0].id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
  tags                   = local.final_tags

  # Optional CPU config
  cpu_core_count        = var.cpu_core_count
  cpu_threads_per_core  = var.cpu_threads_per_core
  create                = var.create
}