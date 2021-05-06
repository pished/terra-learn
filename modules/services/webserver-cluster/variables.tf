variable "server_port" {
  description = "the port the server uses"
  type        = number
  default     = 8080
}

variable "cluster_name" {
  description = "The name to use for all of the cluster resources"
  type = string
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type = string
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type = string
}

variable "instance_type" {
  description = "The type of ec2 instances to run"
  type = string
}

variable "min_size" {
  description = "the minimum number of ec2 instances in the ASG"
  type = number
}

variable "max_size" {
  description = "the maximum number of ec2 instances in the ASG"
  type = number
}