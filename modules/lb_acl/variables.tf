variable lb_name {
  description = "Nom du lb où positionner les ACL (sur tous les frontends du LB)"
  type = string
}

variable acl_name {
  description = "Nom de l'acl à créer sur scaleway"
  type = string
  default = "ipAllowList"
}

variable url_ip_file {
  description = "URL vers le fichier contenant la liste des ips"
  type = string
}

variable "git_token" {
  description = "Token pour récupérer le fichier yaml sur un dépôt git"
  type = string
  sensitive = true
}