terraform {
  required_version = ">= 0.14, < 0.15"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}

provider "aws" {
  region = "us-east-2"

  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}

module "alb" {
    source = "../../modules/networking/alb"

    alb_name = var.alb_name
    subnet_ids = data.aws_subnet_ids.default.ids
}