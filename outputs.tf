output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "instance_ids" {
  value = aws_instance.ec2_instances[*].id
}

output "public_ips" {
  value = aws_instance.ec2_instances[*].public_ip
}