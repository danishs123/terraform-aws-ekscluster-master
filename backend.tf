terraform {
  backend "s3" {
    bucket = "landingzone-terraform-state-s3"
    region = "us-east-1"
  }
}