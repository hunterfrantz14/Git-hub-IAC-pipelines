data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }

  filter {
    name   = "availability-zone"
    values = ["us-east-1e", "us-east-1a", "us-east-1b"]
  }
}

data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}

resource "random_integer" "az_index" {
  min = 0
  max = length(data.aws_subnets.default.ids) - 1
}

resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnets.default.ids[random_integer.az_index.result]
  vpc_security_group_ids = [data.aws_security_group.default.id]

  tags = merge(
    {
      Name = var.instance_name
    },
    var.instance_tags
  )
}
