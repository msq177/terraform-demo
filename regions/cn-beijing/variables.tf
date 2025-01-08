## Network
variable "region" {
  type = string
}

variable "vpc_name" {
  default = "tf-demo-vpc"
}

variable "vpc_cidr" {
  default = "172.16.0.0/16"
}

variable "zone_id" {
  type    = string
  default = "cn-beijing-a"
}

variable "subnet_name" {
  type    = string
  default = "tf-demo-subnet"
}

variable "subnet_cidr" {
  type    = string
  default = "172.16.0.0/24"
}

variable "bandwidth" {
  type    = number
  default = 1
}

## ECS

variable "instance_name_prefix" {
  description = "Instance name prefix, will be used to generate unique instance name. Will be ignored if var.instance_name is specified"
  type        = string
  default     = "tf-prefix-"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "ecs.g1.large"
}

variable "image_id" {
  description = "The Image ID of ECS instance"
  type        = string
}

variable "system_volume_type" {
  description = "Valid values: PTSSD, ESSD_PL0, ESSD_PL1, ESSD_PL2, ESSD_FlexPL etc."
  type        = string
  default     = "ESSD_PL0"
}

variable "system_volume_size" {
  description = "System volume size"
  type        = string
  default     = 40
}

variable "password" {
  description = "The Password of ECS instance"
  nullable    = true
  sensitive   = true
  default     = null
}

variable "associate_eip" {
  description = "Whether associate the Eip for ECS instance"
  type        = bool
  default     = false
}
