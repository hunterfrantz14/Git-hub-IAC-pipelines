instance_name  = "hunter-ec2-prod"
instance_type  = "t3.micro"
ami_id         = "ami-0c02fb55956c7d316"

instance_tags = {
  Environment = "prod"
  Owner       = "hunter"
}
