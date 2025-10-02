module "ec2" {
  source = "../../modules/aws/ec2"   # adjust path if needed

  instance_name = var.instance_name
  instance_type = var.instance_type
  ami_id        = var.ami_id
  instance_tags = var.instance_tags
}
