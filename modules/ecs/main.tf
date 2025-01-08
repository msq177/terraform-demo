resource "random_string" "instance_name" {
  count   = var.instance_name == null ? 1 : 0
  length  = 6
  special = false
}

locals {
  instance_name = var.instance_name == null ? "${var.instance_name_prefix}-${random_string.instance_name[0].id}" : var.instance_name
}

resource "volcengine_ecs_instance" "foo" {
  image_id      = var.image_id
  instance_type = var.instance_type
  instance_name = local.instance_name
  description   = var.description

  instance_charge_type = var.charge_type
  system_volume_type   = var.system_volume_type
  system_volume_size   = var.system_volume_size
  subnet_id            = var.subnet_id
  security_group_ids   = var.security_group_ids

  password      = var.password
  key_pair_name = var.key_pair_name

  project_name = var.project_name
}

resource "volcengine_eip_associate" "foo" {
  count         = var.associate_eip ? 1 : 0
  allocation_id = var.eip_id
  instance_type = "EcsInstance"
  instance_id   = volcengine_ecs_instance.foo.id
}
