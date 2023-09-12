
resource "aws_s3_bucket" "example" {
  bucket = var.s3_bucket_name
  # Other S3 configuration options
}

resource "aws_s3_bucket_public_access_block" "bucketpolicy" {
  bucket                  = aws_s3_bucket.example.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}