output "vpc_id" {
  description = "The id of the vpc."
  value       = volcengine_vpc.foo.id
}

output "subnet_id" {
  description = "The id of the subnet."
  value       = volcengine_subnet.foo.id
}

output "security_group_id" {
  description = "The id of the subnet."
  value       = volcengine_security_group.foo.id
}

output "eip_id" {
  description = "The id of the subnet."
  value       = volcengine_eip_address.foo.id
}
