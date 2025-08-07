# AWS Region
variable "region" {
  description = "AWS Region"
  default     = "ap-south-1"
}

variable "s3_bucket_name" {
  description = "My S3 Bucket Name"
  default     = "terraform-demo-aws-bucket-rk"
}

variable "s3_storage_class" {
  description = "S3 Bucket Storage Class"
  default     = "STANDARD"
}

# Glue Database (equivalent to BigQuery Dataset)
variable "glue_database_name" {
  description = "Glue (Athena) Database Name"
  default     = "demo_dataset"
}

# Optional: S3 data prefix or path
variable "s3_data_prefix" {
  description = "S3 path prefix for organizing dataset files"
  default     = "data/"
}
