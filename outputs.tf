output "public_server__ips" {
  value = aws_instance.my_public_server.*.public_ip
}