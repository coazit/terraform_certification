resource "aws_instance" "public_instance" {
  ami           = var.ec2-specs.ami
  instance_type = var.ec2-specs.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  tags = {
    "Name" = "Ec2-App-Ventas"
  }
  key_name               = data.aws_key_pair.key_private.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("scripts/user_data.sh")

  provisioner "local-exec" {
    command = "echo instancia creada con IP: ${aws_instance.public_instance.public_ip} >> datos_instancia.txt"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo instancia : ${self.public_ip} destruida >> datos_instancia.txt"
  }

  # provisioner "remote-exec" {
  #   inline = [
  #     "echo 'Hola Mundo HTTP' > saludo.txt "
  #   ]
  #   connection {
  #     type = "ssh"
  #     host = self.public_ip
  #     user = "ec2-user"
  #     private_key = file("mikey.pem")
  #   }
  # }


  # lifecycle {
  #   replace_triggered_by = [
  #     aws_subnet.private_subnet.id
  #   ]
  # }

}