terraform {
  backend "s3" {
    bucket = "talent-academy-756231337078-tfstates"
    key    = "documents/talent-academy/ansible/terraform.tfsates"
    region = "us-east-1"
    #dynamodb_table = "terraform-lock"
  }
}