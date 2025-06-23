variable "acls_config" {
  type = map(object({
    lb_name     = string
    yaml_ip_url = string
    acl_name    = optional(string)
  }))
}

variable "git_tokens" {
  type      = map(string)
  sensitive = true
}

