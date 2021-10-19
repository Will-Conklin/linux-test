resource "aws_kms_key" "will-dev-s3-kms" {
  description = "will-dev-s3-kms-key"

}

resource "aws_s3_bucket" "will-dev" {
  bucket = "s3-will-dev"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.will-dev-s3-kms.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }

}