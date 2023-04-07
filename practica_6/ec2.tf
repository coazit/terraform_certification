resource "aws_instance" "public_instance" {
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  tags = {
    "Name" = "Ec2-App-Ventas"
  }
}