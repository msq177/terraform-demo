bucket = "terraform-demo-shanghai-bucket"                   #存储桶名称
key    = "terraform-demo-shanghai-bucket/terraform.tfstate" #对象名称
region = "cn-shanghai"                                      #存储桶所在地域
endpoints = {
  s3 = "https://tos-s3-cn-shanghai.volces.com"              #TOS的S3域名
}

skip_region_validation      = true
skip_metadata_api_check     = true
skip_credentials_validation = true
skip_requesting_account_id  = true
skip_s3_checksum            = true