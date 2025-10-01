module "s3" {
  source = "git::https://github.com/hunterfrantz14/AWSMODULES.git//aws/s3?ref=main"

  bucket_name = var.bucket_name
}
