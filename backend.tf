terraform {
  backend "s3" {
    bucket = "mydev-project-terraform-sample-batch-29-group-08"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
