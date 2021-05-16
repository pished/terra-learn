variable "cluster_name" {
  description = "The name to use for all of the cluster resources"
  type        = string
}

variable "ami" {
  description = "The AMI to run in the cluster"
  default     = "ami-0c55b159cbfafe1f0"
  type        = string
}

variable "instance_type" {
  description = "The type of ec2 instances to run"
  type        = string
}

variable "min_size" {
  description = "the minimum number of ec2 instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "the maximum number of ec2 instances in the ASG"
  type        = number
}

variable "custom_tags" {
  description = "Custom tags to set on the Instances in the ASG"
  type        = map(string)
  default     = {}
}

variable "enable_autoscaling" {
  description = "If set to true, enable auto scaling"
  type        = bool
  default     = false
}

variable "server_port" {
  description = "the port the server uses"
  type        = number
  default     = 8080
}

variable "subnet_ids" {
  description = "The subnet IDs to deploy to"
  type        = list(string)
}
variable "target_group_arns" {
  description = "The ARNs of ELB target groups in which to register Instances"
  type        = list(string)
  default     = []
}
variable "health_check_type" {
  description = "The type of health check to perform. Must be one of: EC2, ELB."
  type        = string
  default     = "EC2"
}
variable "user_data" {
  description = "The User Data script to run in each Instance at boot"
  type        = string
  default     = null
}
