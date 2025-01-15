output "public_dns" {
  description = "DNS Address of Web Server:"
  value       = aws_instance.public_web_server.public_dns
}