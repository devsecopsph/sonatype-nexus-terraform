terraform {
  required_providers {
    nexus = {
      source  = "datadrivers/nexus"
      version = "2.6.0"
    }
  }
}

resource "nexus_repository_docker_hosted" "docker_repo" {
  name   = var.name
  online = true

  docker {
    force_basic_auth = true
    v1_enabled       = false
    http_port        = 5003
    https_port       = 5001
  }

  storage {
    blob_store_name                 = "default"
    strict_content_type_validation = false
  }
}
