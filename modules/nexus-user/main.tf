terraform {
  required_providers {
    nexus = {
      source  = "datadrivers/nexus"
      version = "2.6.0"
    }
  }
}
resource "nexus_security_user" "users" {
  for_each  = var.nexus_users

  userid    = each.key
  firstname = each.value.firstname
  lastname  = each.value.lastname
  email     = each.value.email
  password  = var.user_password
  status    = "active"
  roles     = each.value.roles

  lifecycle {
    ignore_changes = [password]
  }
}