# resource "aws_launch_template" "ubuntu_template" {
#   name_prefix   = "web-server-"
#   image_id      = data.aws_ami.ubuntu.id
#   instance_type = "t2.micro"


#   network_interfaces {
#     associate_public_ip_address = true
#     subnet_id                   = aws_subnet.terraform1.id
#     security_groups = [aws_security_group.allow_tls.id, aws_security_group.allow_ssh.id]
#   }

#   tag_specifications {
#     resource_type = "instance"

#     tags = {
#       Name = "web-server"
#     }
#   }
# }
