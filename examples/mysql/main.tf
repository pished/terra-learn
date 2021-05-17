terraform {
  required_version = ">= 0.14, < 0.15"
}

provider "aws" {
  region = "us-east-2"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

module "mysql" {
    source = "../../modules/data-stores/mysql"
    
    db_name = var.db_name
    db_password = var.db_password
}