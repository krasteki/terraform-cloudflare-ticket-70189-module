/*
terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}
*/

provider "cloudflare" {
  email   = var.my_mail
  api_token = var.my_token
}

data "cloudflare_ip_ranges" "cloudflare" {}


