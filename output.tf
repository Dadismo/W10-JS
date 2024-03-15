output "vpc_id" {
  value = aws_vpc.vpc1.id
}

output "aws_security_group_instance_name" {
  value = aws_security_group.EC2.id
}

output "aws_security_group_LB_name" {
  value = aws_security_group.sg-LB.id
}

output "aws_EC2_ONE_name" {
  value = aws_instance.ec2-one.id
}

output "aws_EC2_TWO_name" {
  value = aws_instance.ec2-two.id
}

output "pb_subnet1" {
  value = aws_subnet.public_subnet1.id
}

output "pb_subnet2" {
  value = aws_subnet.public_subnet2.id
}

output "pv_subnet1" {
  value = aws_subnet.private_subnet1.id
}

output "pv_subnet2" {
  value = aws_subnet.private_subnet2.id
}