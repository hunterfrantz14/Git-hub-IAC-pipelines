ami_id        = "ami-0c55b159cbfafe1f0"             # ✅ Replace with valid AMI in your region
instance_type = "t2.micro"
key_name      = "dev-key-pair"                      # ✅ Replace with your SSH key
subnet_id     = "subnet-0123456789abcdef0"          # ✅ Replace with your subnet
security_group_ids = [
  "sg-0123456789abcdef0"                            # ✅ Replace with your security group
]

tags = {
  Name        = "dev-ec2"
  Environment = "dev"
}
