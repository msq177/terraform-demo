variable "vpc_name" {
  description = "Vpc name"
  type        = string
  default     = "tf-demo-vpc"
}

variable "vpc_cidr" {
  description = "Vpc CIDR"
  type        = string
  default     = "172.16.0.0/16"
}

variable "zone_id" {
  description = "Zone id"
  type        = string
  default     = "cn-beijing-a"
}

variable "subnet_cidr" {
  description = "Subnet CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
  default     = "tf-demo-subnet"
}

variable "security_group_name" {
  description = "Security group name"
  type        = string
  default     = "tf-demo-sg"
}

variable "eip_name" {
  description = "Eip name"
  type        = string
  default     = "tf-demo-eip"
}

variable "billing_type" {
  description = "Eip billing type"
  type        = string
  default     = "PostPaidByBandwidth"
}

variable "bandwidth" {
  description = "Eip bandwidth"
  type        = number
  default     = 1
}
