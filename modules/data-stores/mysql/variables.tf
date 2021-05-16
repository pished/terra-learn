variable "db_name" {
    type = string
    description = "Name of the sql database"
    default = "learn_terra_db_stage"
}

variable "db_password" {
    type = string
    description = "password for the sql database"
}