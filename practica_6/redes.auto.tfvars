# virginia_cidr = "10.10.0.0/16"
virginia_cidr = {
  "prod" = "10.10.0.0/16",
  "dev" = "172.16.0.0/16"
}

# public_subnet  = "10.10.0.0/24"
# private_subnet = "10.10.1.0/24"



subnets = ["10.10.0.0/24", "10.10.1.0/24"]
tags = {
  "env"         = "Dev"
  "owner"       = "coazit"
  "cloud"       = "AWS"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.4.4"
}
sg_ingress_cidr = "0.0.0.0/0"
ec2-specs = {
  "ami"           = "ami-06e46074ae430fba6",
  "instance_type" = "t2.micro"
}