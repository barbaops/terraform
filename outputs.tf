output "bucket_arn" {
  description = "O ARN do bucket S3."
  value       = aws_s3_bucket.this.arn
}

output "bucket_name" {
  description = "O nome do bucket S3."
  value       = aws_s3_bucket.this.bucket
}
