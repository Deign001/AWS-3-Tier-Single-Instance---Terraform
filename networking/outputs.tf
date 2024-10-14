
# Output for the VPC ID
output "vpc_id" {
  value = aws_vpc.main.id
  description = "The ID of the main VPC"
}

# Output for the Internet Gateway ID
output "igw_id" {
  value = aws_internet_gateway.igw.id
  description = "The ID of the internet gateway attached to the VPC"
}

# Output for the Public Subnet ID
output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
  description = "The ID of the public subnet"
}

# Output for the Private Subnet ID
output "private_subnet_id" {
  value = aws_subnet.private_subnet_id.id
  description = "The ID of the private subnet"
}

# Output for the Public Route Table ID
output "public_route_table_id" {
  value = aws_route_table.public.id
  description = "The ID of the public route table"
}

# Output for the Route Table Association of the Public Subnet
output "public_route_table_association_id" {
  value = aws_route_table_association.public_association.id
  description = "The ID of the public route table association with the public subnet"
}
