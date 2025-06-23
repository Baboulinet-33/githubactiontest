
module "lb_acl" {
  source = "./modules/lb_acl"

  for_each = var.acls_config

  lb_name     = each.value.lb_name
  acl_name    = each.value.acl_name
  url_ip_file = each.value.yaml_ip_url
  git_token   = var.git_tokens[each.key]
}
