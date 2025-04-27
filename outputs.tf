output my_ec2_instance_ip {
  value       = aws_instance.my-instance.public_ip
  description = "gives the public ip of the ec2 instance"
}
