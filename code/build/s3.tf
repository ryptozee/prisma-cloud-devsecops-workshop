provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "5d4962cb-2564-47af-a8d3-4c4855ceaa35"
    git_commit           = "2e8b136ae96ddfcea0bb31063d517c28e35f5670"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-11 17:28:33"
    git_last_modified_by = "zivukushingai@gmail.com"
    git_modifiers        = "zivukushingai"
    git_org              = "ryptozee"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
