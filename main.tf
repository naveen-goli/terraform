provider "aws" {
 profile = "default"
 region = "us-east-1"
}
module "network" {
 source = "./module"
}
#resource "aws_key_pair" "ec2key" {
#key_name = "publicKey"
#public_key = file(var.public_key_path)
#}

resource "aws_instance" "instance" {
 ami = var.ami
 instance_type = var.type
 subnet_id = module.network.subnet_id
 vpc_security_group_ids = [module.network.security_group]
# key_name = aws_key_pair.ec2key.key_name
}
