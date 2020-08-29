provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

module "ec2" {
  source                  = "git@github.com:gomex/descomplicando-terraform-modulo.git?ref=v0.2"
  app_name                = "turma3"
  instance_type           = "t3.micro"
  count                   = 2
}

output "ip_address_ec2" {
  value = module.ec2[*].ip_address
}