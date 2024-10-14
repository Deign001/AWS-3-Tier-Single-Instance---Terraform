
resource "aws_instance" "app_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id
  security_groups = [var.app_sg_id]

  tags = {
    Name = "app-server"
  }
}
    