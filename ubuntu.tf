resource "aws_instance" "web" {
  count             = 3
  launch_template {
    id      = aws_launch_template.ubuntu_template.id
    version = "$Latest"
  }

  subnet_id = aws_subnet.terraform1.id

  tags = {
    Name = "web-instance-${count.index + 1}"
  }
}
