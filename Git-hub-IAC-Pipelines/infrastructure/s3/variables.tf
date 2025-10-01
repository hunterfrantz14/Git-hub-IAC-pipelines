variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "Access Control List"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "Tags to apply"
  type        = map(string)
  default     = {}
}
