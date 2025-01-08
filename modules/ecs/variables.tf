variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "ecs.g1.large"
}

variable "charge_type" {
  description = "Charge type"
  type        = string
  default     = "PostPaid"
}

variable "instance_name" {
  description = "Instance name"
  nullable    = true
  type        = string
  default     = null
}

variable "instance_name_prefix" {
  description = "Instance name prefix, will be used to generate unique instance name. Will be ignored if var.instance_name is specified"
  type        = string
  default     = "tf-prefix-"
}

variable "image_id" {
  description = "The Image ID of ECS instance"
  type        = string
}

variable "description" {
  description = "The Description of ECS instance"
  type        = string
  default     = "Managed by Terraform"
}

variable "project_name" {
  description = "The ProjectName of ECS instance"
  type        = string
  default     = "default"
}

variable "security_group_ids" {
  description = "The Security Group ids of ECS instance"
  type        = list(string)
}

variable "subnet_id" {
  description = "The Subnet id of ECS instance"
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

variable "key_pair_name" {
  description = "The KeyPair of ECS instance"
  nullable    = true
  default     = null
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

variable "eip_id" {
  description = "The id of Eip"
  type        = string
  nullable    = true
  default     = null
}
