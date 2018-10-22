terraform {
  backend "s3" {
    bucket = "cap-terraform-remote-storage"
    key    = "networking/terraform.state"
    region = "us-east-1"
    profile = "cap"
  }
}
