output "alb_dns_name" {
  value       = aws_lb.example.dns_name
  description = "domain name of load balancer"
}