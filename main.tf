resource "aws_s3_bucket_inventory" "this" {
  bucket                      = var.bucket
  name                        = var.name
  included_object_versions    = var.include_object_versions
  schedule {
    frequency                 = var.frequency
  }
    destination {
    bucket {
      bucket_arn              = var.bucket_arn
      format                  = var.format
      account_id              = var.account_id
      bucket_prefix           = var.bucket_prefix
      encryption {
        sse_kms {
          key_id              = var.key_id
        }
        sse_s3                = var.sse_s3
      }
    }
  }
  enabled                     = var.enabled
  filter {
    prefix                    = var.prefix
  }
  optional_fields             = var.optional_fields
}

/**
  optional_fields = ["Size", "LastModifiedDate", "StorageClass", "ETag", "IsMultipartUploaded", "ReplicationStatus", "EncryptionStatus",
  "ObjectLockRetainUntilDate", "ObjectLockMode", "ObjectLockLegalHoldStatus", "IntelligentTieringAccessTier"]
*/
