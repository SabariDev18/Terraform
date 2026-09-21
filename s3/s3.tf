provider "aws" {
 region = "ap-south-1"
}
resource "aws_s3_bucket" "tfs3-bucket" {
 bucket = "terraform-s3-bucket-191"

tags = {
Name = "terraform_s3_bucket"
}
}
