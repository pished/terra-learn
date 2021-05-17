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
}

module "hello_world_app" {
  # TODO: replace this with your own module URL and version!!
  source                 = "../../../../modules/services/hello-world-app"
  server_text            = "New server text"
  environment            = "prod"
  db_remote_state_bucket = "terra-remote-state-store"
  db_remote_state_key    = "prod/data-stores/mysql/terraform.tfstate"
  instance_type          = "t2.micro"
  min_size               = 2
  max_size               = 2
  enable_autoscaling     = false
}