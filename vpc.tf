# resource "aws_vpc" "terraform" {
#   cidr_block = var.cidr_block
# }

# resource "aws_subnet" "terraform1" {
#   vpc_id     = aws_vpc.terraform.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "Terraform1"
#   }
# }

# resource "aws_subnet" "terraform2" {
#   vpc_id     = aws_vpc.terraform.id
#   cidr_block = "10.0.2.0/24"

#   tags = {
#     Name = "Terraform2"
#   }
# }

# resource "aws_subnet" "terraform3" {
#   vpc_id     = aws_vpc.terraform.id
#   cidr_block = "10.0.3.0/24"

#   tags = {
#     Name = "Terraform3"
#   }
# }

# resource "aws_internet_gateway" "gateway" {
#   vpc_id     = aws_vpc.terraform.id

#   tags = {
#     Name = "terraformGW"
#   }
# }

# resource "aws_route_table" "terraform" {
#   vpc_id = aws_vpc.terraform.id

# #   route {
# #     cidr_block = "0.0.0.0/0"
# #     gateway_id = aws_internet_gateway.gateway.id
# #   }

#   tags = {
#     Name = "terraform"
#   }
# }

# resource "aws_route_table_association" "a" {
#   subnet_id      = aws_subnet.terraform1.id
#   route_table_id = aws_route_table.terraform.id
# }

# resource "aws_route_table_association" "b" {
#   subnet_id      = aws_subnet.terraform2.id
#   route_table_id = aws_route_table.terraform.id
# }

# resource "aws_route_table_association" "c" {
#   subnet_id      = aws_subnet.terraform3.id
#   route_table_id = aws_route_table.terraform.id
# }

# resource "aws_route_table_association" "i" {
#   gateway_id     = aws_internet_gateway.gateway.id
#   route_table_id = aws_route_table.terraform.id
# }