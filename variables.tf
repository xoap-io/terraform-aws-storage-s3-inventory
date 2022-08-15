variable "bucket" {
  type                      = string
  description               = "(Required) The name of the source bucket that inventory lists the objects for."
}
variable "name" {
  type                      = string
  description               = "(Required) Unique identifier of the inventory configuration for the bucket."
}
variable "include_object_versions" {
  type                      = string
  default                   = "All"
  description               = "(Required) Object versions to include in the inventory list. Valid values: All, Current."
}
variable "frequency" {
  type                      = string
  default                   = "daily"
  description               = "(Required) Specifies how frequently inventory results are produced. Valid values"
}
variable "bucket_destination" {
  type                      = string
  description               = "(Required) The S3 bucket configuration where inventory results are published (documented below)."
}

variable "bucket_arn" {
  type                      = string
  description               = "(Required) The Amazon S3 bucket ARN of the destination."
}
variable "format" {
  type                      = string
  default                   = "ORC"
  description               = "(Required) Specifies the output format of the inventory results. Can be CSV, ORC or Parquet."
}
variable "account_id" {
  type                      = string
  description               = "(Optional) The ID of the account that owns the destination bucket. Recommended to be set to prevent problems if the destination bucket ownership changes."

}
variable "bucket_prefix" {
  type                      = string
  description               = "(Optional) The prefix that is prepended to all inventory results."
}
variable "sse_kms" {
  type                      = string
  description               = "(Optional) Specifies to use server-side encryption with AWS KMS-managed keys to encrypt the inventory file (documented below)."
}
variable "key_id" {
  type                      = string
  description               = "Required) The ARN of the KMS customer master key (CMK) used to encrypt the inventory file."
}
variable "sse_s3" {
  type                      = string
  description               = "(Optional) Specifies to use server-side encryption with Amazon S3-managed keys (SSE-S3) to encrypt the inventory file."

}
variable "enabled" {
  type                      = bool
  default                   = true
  description               = "(Optional, Default: true) Specifies whether the inventory is enabled or disabled."
}
variable "filter" {
  type                      = string
  description               = "(Optional) Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria (documented below)."
}
variable "optional_fields" {
  type                      = map(list)
  description               = "(Optional) List of optional fields that are included in the inventory results. Please refer to the S3 documentation for more details."
}


variable "context" {
  type = object({
    organization = string
    environment  = string
    account      = string
    product      = string
    tags         = map(string)
  })
  description = "Default context for naming and tagging purpose"
}
