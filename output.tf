output "public_ip" {
    value = aws_instance.web.public_ip  
}

output "private_ip" {
    value = aws_instance.web.private_ip  
}

output "key_name" {
    value = aws_instance.web.key_name  
}

output "arn" {
    value = aws_instance.web.arn  
}

output "sec_id" {
    value = aws_instance.web.vpc_security_group_ids 
}

output "subnet_id" {
    value = aws_instance.web.subnet_id  
}

output "vpc_id" {
  value = aws_vpc.terraform.id
}

output "aws_internet_gateway" {
  value = aws_internet_gateway.gateway.id
}