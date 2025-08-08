variable "nexus_users" {
  type = map(object({
    firstname = string
    lastname  = string
    email     = string
    roles     = list(string)
  }))
}

variable "user_password" {
  type      = string
  sensitive = true
}
