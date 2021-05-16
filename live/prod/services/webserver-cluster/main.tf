terraform {
  backend "s3" {
    bucket = "terra-remote-state-store"
    key    = "prod/services/webserver-cluster/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

provider "aws" {
    region = "us-east-2"

    # Allow any 2.x version of the AWS provider
    version = "~> 2.0"
}

module "webserver_cluster" {
    source = "../../../modules/services/webserver-cluster"

    cluster_name = "webservers-prod"
    db_remote_state_bucket = "terra-remote-state-store"
    db_remote_state_key = "prod/data-stores/mysql/terraform.tfstate"

    instance_type = "t2.micro"
    min_size = 2
    max_size = 10
    enable_autoscaling = false

  custom_tags = {
    Owner = "team-foo"
    DeployedBy = "terraform"
  }
}