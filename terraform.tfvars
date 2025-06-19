acls_config = {
  lb-test-bnl = {
    lb_name = "lb-sdid-app-public-mirai"
    acl_name = "ip_allow_list"
    yaml_ip_url = "https://raw.githubusercontent.com/IA-Generative/mirai-values/refs/heads/main/ipwhitelist.yaml"
  }
  lb-sdid-app-hp-public-mirai = {
    lb_name = "lb-sdid-app-hp-public-mirai"
    acl_name = "ip_allow_list"
    yaml_ip_url = "https://raw.githubusercontent.com/IA-Generative/mirai-values/refs/heads/main/ipwhitelist.yaml"
  }
  
}