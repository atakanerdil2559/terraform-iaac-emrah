terraform {
  required_version = "0.11.14"

  backend "s3" {
    bucket = "state-class-emrah3434"
    key    = "path/to/my/key"

    #dynamodb_table = "state-class"
    region = "us-east-1"
  }
}
