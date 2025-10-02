ami_id        = "ami-0c55b159cbfafe1f0"
instance_type = "t2.micro"
key_name      = "dev-key"
subnet_id     = "subnet-0123456789abcdef0"
security_group_ids = ["sg-0123456789abcdef0"]

tags = {
  Name        = "ec2-dev-v2"     # 🔧 Changed tag to trigger CI/CD
  Environment = "dev"
}
