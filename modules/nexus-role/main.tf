terraform {
  required_providers {
    nexus = {
      source  = "datadrivers/nexus"
      version = "2.6.0"
    }
  }
}

resource "nexus_security_role" "role" {
  for_each    = var.roles
  roleid      = each.key
  name        = each.value.name
  description = each.value.description
  privileges  = each.value.privileges
  roles       = each.value.roles
}
