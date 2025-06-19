terraform {
  required_version = ">= 1.6.4"
  backend "s3" {
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    use_path_style              = true
    region                      = "fr-par"
    skip_region_validation      = true
    skip_s3_checksum            = true

    bucket = "cpin-tfstate"
    key    = "scw-lb-acl.tfstate"
    endpoints = {
      s3 = "https://s3.fr-par.scw.cloud"
    }
  }
}