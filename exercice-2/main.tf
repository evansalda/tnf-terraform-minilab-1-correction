resource "aws_s3_bucket" "bucket" {
  bucket = "nuumfactory-s3-import-2-xx"
  
  tags = {
    imported = "true"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}