resource "aws_instance" "public_instance" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  tags = {
    "Name" = "Ec2-App-Ventas"
  }
  key_name               = data.aws_key_pair.key_private.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]

  # lifecycle {
  #   replace_triggered_by = [
  #     aws_subnet.private_subnet.id
  #   ]
  # }
}