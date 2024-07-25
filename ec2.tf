# resource "aws_instance" "web" {
#   ami           = "ami-0427090fd1714168b"
#   instance_type = "t3.micro"
#   key_name = "FFTerraform"
#   security_groups = ["sg-0902c8795516c6384"]
#   associate_public_ip_address = true
#   subnet_id = "subnet-03a67f73d7575c89e"  

#   tags = {
#     Name = "HelloWorld"
#     team = "DevOps"
#   }
# }