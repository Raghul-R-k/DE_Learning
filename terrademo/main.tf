terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.6.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket        = var.s3_bucket_name
  force_destroy = true
}

resource "aws_s3_bucket_lifecycle_configuration" "auto_expire_rule" {
  bucket = aws_s3_bucket.demo_bucket.id

  rule {
    id     = "auto-expire-after-3-days"
    status = "Enabled"

    expiration {
      days = 3
    }

    filter {
      prefix = "" # Apply to all objects
    }
  }
}

resource "aws_glue_catalog_database" "demo_dataset" {
  name = var.glue_database_name
}



