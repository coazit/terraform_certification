variable "instancias" {
  description = "Nombre de las instancias"
  type        = set(string)
  default     = ["mysql", "jumpserver"]
}

resource "aws_instance" "public_instance" {
  for_each               = var.instancias
  ami                    = var.ec2-specs.ami
  instance_type          = var.ec2-specs.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key_private.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("scripts/user_data.sh")
  tags = {
    "Name" = each.value
  }

}