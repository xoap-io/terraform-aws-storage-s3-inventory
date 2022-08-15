output "bucket" {
  value             = aws_s3_bucket_inventory.this.bucket
  description       = "(Required) The name of the source bucket that inventory lists the objects for."
}
output "name" {
  value             = aws_s3_bucket_inventory.this.name
  description       = "(Required) Unique identifier of the inventory configuration for the bucket."
}
output "included_object_versions" {
  value             = aws_s3_bucket_inventory.this.included_object_versions
  description       = "(Required) Object versions to include in the inventory list. Valid values: All, Current."
}
output "schedule" {
  value             = aws_s3_bucket_inventory.this.schedule
  description       = "(Required) Specifies the schedule for generating inventory results (documented below)."
}
output "destination" {
  value           = aws_s3_bucket_inventory.this.destination
  description     = " (Required) Contains information about where to publish the inventory results (documented below)."
}
output "enabled" {
  value           = aws_s3_bucket_inventory.this.enabled
  description     = "(Optional, Default: true) Specifies whether the inventory is enabled or disabled."
}
output "filter" {
  value           = aws_s3_bucket_inventory.this.filter
  description     = "(Optional) Specifies an inventory filter. The inventory only includes objects that meet the filter's criteria (documented below)."
}
output "optional_fields" {
  value           = aws_s3_bucket_inventory.this.optional_fields
  description     = "(Optional) List of optional fields that are included in the inventory results. Please refer to the S3 documentation for more details."
}

output "context" {
  value       = var.context
  description = "Exported context from input variable"
}
