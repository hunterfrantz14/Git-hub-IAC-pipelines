module "s3" {
  source = "../../modules/aws/s3"   # adjust path if needed

  bucket_name = var.bucket_name
  acl         = var.acl
  tags        = var.tags
}
