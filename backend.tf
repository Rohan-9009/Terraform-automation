terraform {
  backend "s3" {
    bucket = "mydev-project-terraform-sample-batch-29-group-08"
    key = "main"
    region = "ap-south-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
