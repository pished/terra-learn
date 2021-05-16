terraform {
    required_version = ">= 0.14, < 0.15"
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