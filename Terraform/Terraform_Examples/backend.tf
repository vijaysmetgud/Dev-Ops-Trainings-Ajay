terraform {
  backend "s3" {
    bucket = "name_of_bucket_created_in_S3"
    key    = "State_file_name-myterraform.tfstate"
    region = "us-east-1"
  }
}

