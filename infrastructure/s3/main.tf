module "s3" {
  source = "git::https://github.com/hunterfrantz14/Modules.git//aws/s3?ref=main"

  bucket_name = var.bucket_name
  acl         = var.acl
  tags        = var.tags
}
