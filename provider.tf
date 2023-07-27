provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "33tfstatebucket"
    key    = "devsecopsb33-bs3.tfstate"
    region = "us-east-1"
    # dynamodb_table = "devopsb27-terraform-locking"
    # encrypt        = true
  }
}
