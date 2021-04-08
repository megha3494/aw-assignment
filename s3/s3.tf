resource "aws_s3_bucket" "s3_bucket_1" {
   bucket = var.bucket_name
   acl = var.acl_type
   versioning {
      enabled = true
   }
   tags = {
     Name = var.bucket_name
     Environment = var.environment
   }
}

resource "aws_s3_bucket_public_access_block" "s3_block_public" {
  bucket = aws_s3_bucket.s3_bucket_1.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}

# resource "aws_s3_bucket_policy" "my_bucket_policy" {
#   bucket = aws_s3_bucket.s3_bucket_1.id

#   # Terraform's "jsonencode" function converts a
#   # Terraform expression's result to valid JSON syntax.
#   policy = jsonencode({
#     Version = "2012-10-17"
#     Id      = "MYBUCKETPOLICY"
#     Statement = [
#       {
#         Sid       = "S3_private_policy"
#         Effect    = "Allow"
#         Principal = "*"
#         Action    = [ "s3:ListBucket",
#                       "s3:GetObject"
#         ]
        
#         Resource = [
#           aws_s3_bucket.s3_bucket_1.arn,
#           "${aws_s3_bucket.s3_bucket_1.arn}/*",
#         ]
#       },
#     ]
#   })
# }