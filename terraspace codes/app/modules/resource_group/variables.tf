# This is where you put your variables declaration
// *** Azure Resource Group Variables ***
variable "resource_group_name" {
  description = ""
  type        = string
  default = "terraspace-rg"
}
variable "location" {
  description = ""
  type        = string
  default = "canadacentral"
}
variable "tags" {
  description = ""
  type        = any
  default = {
  Enviroment = "dev"
}

}