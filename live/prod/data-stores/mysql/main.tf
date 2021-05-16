terraform {
  backend "s3" {
    bucket = "terra-remote-state-store"
    key    = "prod/data-stores/mysql/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

provider "aws" {
    region = "us-east-2"
}

resource "aws_db_instance" "example" {
    identifier_prefix = "terraform-up-and-running"
    engine ="mysql"
    allocated_storage = 10
    instance_class = "db.t2.micro"
    name = var.db_name
    username = "admin"
    skip_final_snapshot  = true

    # how to set the password?
    password = var.db_password
}
