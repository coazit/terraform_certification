virginia_cidr = "10.10.0.0/16"
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