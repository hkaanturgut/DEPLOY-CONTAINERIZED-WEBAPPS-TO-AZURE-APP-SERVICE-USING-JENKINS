// *** Azure Resource Group Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "tags" {
  description = ""
  type        = map(any)
}

// *** Azure Container Registery (ACR) Variables ***
variable "acr_name" {
  description = ""
  type        = string
}
variable "sku" {
  description = ""
  type        = string
}
variable "admin_enabled" {
  description = ""
  type        = bool
}
