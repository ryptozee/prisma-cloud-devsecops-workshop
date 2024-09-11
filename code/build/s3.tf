provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "5210e3bd-1987-4123-a30a-517048cea2d2"
    git_commit           = "e9eadebd270a6480a8be6e50b251ea84e551a480"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-11 16:47:04"
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


