output "vpc_id" {
 value = aws_vpc.vpc.id
}
output "subnet_id" {
value = aws_subnet.subnet_public.id
}
output "security_group" {
value = aws_security_group.sg_22.id
}
