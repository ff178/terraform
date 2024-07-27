# resource "aws_instance" "web" {
#   ami           = data.aws_ami.amzn-linux-2023-ami.id
#   instance_type = "t3.micro"
#   key_name = var.key_name
#   security_groups = [aws_security_group.allow_tls.name, aws_security_group.allow_ssh.name] 
#   associate_public_ip_address = true

#   subnet_id = aws_subnet.terraform1.id

#   tags = {
#     Name = "HelloWorld"
#     team = "DevOps"
#   }
# }