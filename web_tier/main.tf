
resource "aws_instance" "web_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  security_groups = [var.web_sg_id]

  tags = {
    Name = "web-server"
  }
}
