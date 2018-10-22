resource "aws_s3_bucket" "terraform-remote-storage" {
  bucket = "cap-terraform-remote-storage"
  acl    = "private"

  tags {
    Name        = "cap-terraform-remote-storage"
    Environment = "global"
  }
  versioning {
    enabled = true
  }

}
