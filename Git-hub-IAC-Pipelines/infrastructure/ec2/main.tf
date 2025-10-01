module "ec2" {
  source = "git::https://github.com/hunterfrantz14/AWSMODULES.git//aws/ec2?ref=main"

  ami           = var.ami
  instance_type = var.instance_type
  name          = var.name
}
