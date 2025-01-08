#module "network" {
#  source = "../../modules/network"
#
#  vpc_name    = var.vpc_name
#  vpc_cidr    = var.vpc_cidr
#  subnet_name = var.subnet_name
#  subnet_cidr = var.subnet_cidr
#  zone_id     = var.zone_id
#  bandwidth   = 2
#}
#
#module "ecs" {
#  source = "../../modules/ecs"
#
#  subnet_id            = module.network.subnet_id
#  security_group_ids   = [module.network.security_group_id]
#  associate_eip        = true
#  eip_id               = module.network.eip_id
#  instance_name_prefix = var.instance_name_prefix
#  image_id             = var.image_id
#  instance_type        = var.instance_type
#  password             = var.password
#}
