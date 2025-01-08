bucket = "terraform-demo-beijing"                   #存储桶名称
key    = "terraform-demo-beijing/terraform.tfstate" #对象名称
region = "cn-beijing"                               #存储桶所在地域
endpoints = {
  s3 = "https://tos-s3-cn-beijing.volces.com"       #TOS的S3域名
}

skip_region_validation      = true
skip_metadata_api_check     = true
skip_credentials_validation = true
skip_requesting_account_id  = true
skip_s3_checksum            = true