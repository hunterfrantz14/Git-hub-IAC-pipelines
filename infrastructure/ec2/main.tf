module "ec2" {
  source        = "git::https://github.com/hunterfrantz14/Modules.git//aws/ec2?ref=main"

  instance_name = var.instance_name
  instance_type = var.instance_type
  ami_id        = var.ami_id
  instance_tags = var.instance_tags
}
