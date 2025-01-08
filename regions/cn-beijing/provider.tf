terraform {
  required_version = ">= 1.6.0"

  required_providers {
    volcengine = {
      source  = "volcengine/volcengine"
      version = "=0.0.156"
    }
  }

  backend "s3" {}
}

provider "volcengine" {
  region = var.region
}
