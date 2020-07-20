
output "instance_public_ip_addresses_server" {
  value = {
    for instance in aws_instance.server:
    instance.id => instance.public_ip
  }
}