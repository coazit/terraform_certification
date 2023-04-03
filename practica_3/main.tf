resource "aws_s3_bucket" "proveedores" {
  count  = 6
  bucket = "cortiz-proyectos-${random_string.sufijo[count.index].id}"
  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
    Owner       = "cortiz"
    Office      = "proveedores"
  }
}

resource "random_string" "sufijo" {
  count   = 6
  length  = 8
  special = false
  upper   = false
  numeric = false
}
