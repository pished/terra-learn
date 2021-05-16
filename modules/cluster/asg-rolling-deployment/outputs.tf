output "asg_name" {
  value = aws_autoscaling_group.sample.name
  description = "The name of the auto scaling group"
}

output "instance_security_group_id" {
  value       = aws_security_group.instance.id
  description = "The ID of the EC2 Instance Security Group"
}