variable "roles" {
  description = "Nexus roles"
  type = map(object({
    name        = string
    description = string
    privileges  = list(string)
    roles       = list(string)
  }))
}