# Output the public IP of the web server instance
output "web_instance_public_ip" {
  value       = aws_instance.web_instance.public_ip
  description = "The public IP address of the web server instance"
}

# Output the instance ID of the web server
output "web_instance_id" {
  value       = aws_instance.web_instance.id
  description = "The ID of the web server instance"
}

# Output the private IP of the web server instance (optional)
output "web_instance_private_ip" {
  value       = aws_instance.web_instance.private_ip
  description = "The private IP address of the web server instance"
}

