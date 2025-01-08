resource "volcengine_vpc" "foo" {
  vpc_name   = var.vpc_name
  cidr_block = var.vpc_cidr
}

resource "volcengine_subnet" "foo" {
  zone_id     = var.zone_id
  cidr_block  = var.subnet_cidr
  subnet_name = var.subnet_name
  vpc_id      = volcengine_vpc.foo.id
}

resource "volcengine_security_group" "foo" {
  vpc_id              = volcengine_vpc.foo.id
  security_group_name = var.security_group_name
}

resource "volcengine_eip_address" "foo" {
  name         = var.eip_name
  billing_type = var.billing_type
  bandwidth    = var.bandwidth
}
