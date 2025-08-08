terraform {
  required_providers {
    nexus = {
      source  = "datadrivers/nexus"
      version = "2.6.0"
    }
  }
}

provider "nexus" {
  insecure = true
  url      = var.nexus_url
  username = var.nexus_username
  password = var.nexus_password
}

module "nexus_roles" {
  source = "./modules/nexus-role"
  roles  = local.nexus_roles

  providers = {
    nexus = nexus
  }
}

module "nexus_users" {
  source        = "./modules/nexus-user"
  nexus_users   = local.nexus_users
  user_password = local.user_password

  providers = {
    nexus = nexus
  }

  depends_on = [module.nexus_roles]
}

module "docker_repo" {
  source = "./modules/nexus-docker-repo"
  name   = "my-docker-repo"

  providers = {
    nexus = nexus
  }
}