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

output "source_rng" {
    value = data.cloudflare_ip_ranges.cloudflare.ipv4_cidr_blocks
}

variable "my_mail" { 
}

variable "my_token" { 
}