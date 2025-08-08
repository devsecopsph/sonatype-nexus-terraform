variable "nexus_url" {
  type        = string
  description = "URL of the Nexus server"
}

variable "nexus_username" {
  type        = string
  description = "Admin username for Nexus"
}

variable "nexus_password" {
  type        = string
  description = "Admin password for Nexus"
  sensitive   = true
}