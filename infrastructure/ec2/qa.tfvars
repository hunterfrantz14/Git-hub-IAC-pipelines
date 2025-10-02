ami_id        = "ami-0c55b159cbfafe1f0"             # ✅ Replace with valid QA AMI
instance_type = "t3.micro"
key_name      = "qa-key-pair"                       # ✅ Replace with your QA SSH key
subnet_id     = "subnet-0abcdef1234567890"          # ✅ Replace with QA subnet
security_group_ids = [
  "sg-0abcdef1234567890"                            # ✅ Replace with QA SG
]

tags = {
  Name        = "qa-ec2"
  Environment = "qa"
}
