module "s3_bucket" {
  source      = "git::https://github.com/hunterfrantz14/AWSModules.git//aws/s3?ref=main"

  bucket_name = var.bucket_name
  acl         = var.acl
  tags        = var.tags
}
