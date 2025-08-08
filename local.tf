locals {
  user_password = trimspace(file("initial_password.txt"))

  nexus_users = {
    devsecops = {
      firstname = "ems"
      lastname  = "Guo"
      email     = "ems@emerson.local"
      roles     = ["nx-admin"]
    }
    dev = {
      firstname = "Sarah"
      lastname  = "Lim"
      email     = "sarah.lim@emerson.local"
      roles     = ["nx-developer-dev"]
    }
  }

  nexus_roles = {
    "nx-developer-dev" = {
      name        = "Developer - Dev"
      description = "Developer role with full dev repository and docker access"
      privileges  = [
        "nx-repository-view-docker-*-browse",
        "nx-repository-view-docker-*-read",
        "nx-repository-view-docker-*-add",
        "nx-repository-view-docker-*-edit",
        "nx-repository-view-*-*-*",
      ]
      roles = []
    }

    "nx-devsecops-prod" = {
      name        = "DevSecOps - Prod"
      description = "DevSecOps role"
      privileges  = [
        "nx-repository-view-docker-*-browse",
        "nx-repository-view-docker-*-read",
        "nx-repository-view-*-*-*",
      ]
      roles = []
    }
  }
}
