output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]
}
