
variable "ami" {}
variable "instance_type" {}
variable "private_subnet_id" {}

variable "app_sg_id" {
  description = "The ID of the application security group"
  type        = string
}
