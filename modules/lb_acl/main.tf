locals {
  auth_header = "Bearer ${var.git_token}"
}

data "http" "yaml_file" {
  url = var.url_ip_file

  request_headers = {
    Authorization = local.auth_header
  }
}

locals {
  ips = yamldecode(data.http.yaml_file.response_body).whitelist
}

data "scaleway_lb" "lb" {
  name = var.lb_name
}

data "scaleway_lb_frontends" "byLBID" {
  lb_id      = data.scaleway_lb.lb.id
}

resource "scaleway_lb_acl" "acl01" {
  count        = length(data.scaleway_lb_frontends.byLBID.frontends)
  frontend_id  = data.scaleway_lb_frontends.byLBID.frontends[count.index].id
  name         = var.acl_name
  description  = "Allow only IPs"
  index        = 0
  action {
    type = "deny"
  }
  
  match {
    ip_subnet = local.ips
    invert = true
  }
}

