# security_groups/outputs.tf
output "aws_security_group" {
  value = aws_security_group.web_sg
}

output "app_sg_id" {
  value = aws_security_group.app_sg.id
}

output "web_sg_id" {
  value       = aws_security_group.web_sg.id
  description = "The ID of the web security group"
}