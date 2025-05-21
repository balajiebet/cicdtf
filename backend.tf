terraform {
  backend "s3" {
    bucket = "demobucket1234567898"
    key    = "stateterraform"
    region = "us-east-1"
    dynamodb_table = "backend"
  }
}