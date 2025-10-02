ami_id        = "ami-0c55b159cbfafe1f0"             # ✅ Replace with production AMI
instance_type = "t3.medium"
key_name      = "prod-key-pair"                     # ✅ Replace with your PROD SSH key
subnet_id     = "subnet-0fedcba9876543210"          # ✅ Replace with PROD subnet
security_group_ids = [
  "sg-0fedcba9876543210"                            # ✅ Replace with PROD SG
]

tags = {
  Name        = "prod-ec2"
  Environment = "prod"
  Owner       = "ProductionOps"
}
