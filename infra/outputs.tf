output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.public.id
  
}

output "instance_id" {
  value = aws_instance.web[0].id
}

output "name" {
  value = aws_instance.web[0].public_ip
  
}