variable "region" {}
variable "Environment" {}
variable "bucket_name" {
  description = "list of buckets"
  type        = list(string)
  default     = ["vinay-terraform-bucket-12345", "vinay-terraform-bucket-67890"]

}
variable "bucket_name_set" {
  description = "list of buckets"
  type        = set(string)
  default     = ["vinay-terraform-bucket-1235", "vinay-terraform-bucket-6790"]

}

variable "tags" {
  type = map(string)
  default = {
    Environment = "Dev"
    created_by  = "vinay"
  }
}
