#count words on lists 
resource "aws_s3_bucket" "bucket_1" {
  count  = length(var.bucket_name)
  bucket = var.bucket_name[count.index]
  tags   = var.tags

}
#for_each works on sets and maps
resource "aws_s3_bucket" "bucket_2" {
  for_each = var.bucket_name_set
  bucket   = each.value
  tags     = var.tags

  depends_on = [aws_s3_bucket.bucket_1]

}