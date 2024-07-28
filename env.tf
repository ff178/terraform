#Environment web 
# provider "aws" {
#   region = "us-east-1"
# }

# variable "environments" {
#   default = ["dev", "prod"]
# }

# variable "instance_types" {
#   default = {
#     dev  = "t2.micro"
#     prod = "t2.small"
#   }
# }

# resource "aws_vpc" "main" {
#   for_each = toset(var.environments)

#   cidr_block = "10.${each.value == "dev" ? 0 : 1}.0.0/16"

#   tags = {
#     Name = "${each.key}-vpc"
#   }
# }

# resource "aws_subnet" "main" {
#   for_each = toset(var.environments)

#   vpc_id            = aws_vpc.main[each.key].id
#   cidr_block        = "10.${each.value == "dev" ? 0 : 1}.1.0/24"
#   availability_zone = "us-east-1a"

#   tags = {
#     Name = "${each.key}-subnet"
#   }
# }

# resource "aws_instance" "wordpress" {
#   for_each = toset(var.environments)

#   ami           = data.aws_ami.ubuntu.id 
#   instance_type = lookup(var.instance_types, each.key)
#   subnet_id     = aws_subnet.main[each.key].id

#   user_data = templatefile("${path.module}/wordpress.sh", {})

#   tags = {
#     Name = "${each.key}-wordpress"
#   }
# }

# # output "vpc_ids" {
# #   value = aws_vpc.main.*.id
# # }

# # output "subnet_ids" {
# #   value = aws_subnet.main.*.id
# # }

# # output "instance_ids" {
# #   value = aws_instance.wordpress.*.id
# # }
