output "alb_dns_name" {
  value       = aws_lb.example.dns_name
  description = "domain name of load balancer"
}

output "asg_name" {
  value = aws_autoscaling_group.sample.name
  description = "The name of the auto scaling group"
}