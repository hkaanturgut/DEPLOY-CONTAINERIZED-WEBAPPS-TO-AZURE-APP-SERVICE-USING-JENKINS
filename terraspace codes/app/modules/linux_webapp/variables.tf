variable "resource_group_name" {
  description = ""
  type        = string
}
variable "location" {
  description = ""
  type        = string
}
variable "linux_webapp_name" {
  type = string

}
variable "service_plan_id" {
  type = any

}
variable "always_on" {
  type = bool
  
}
variable "docker_image" {
  type = any
  
}
variable "docker_image_tag" {
  type = string
  
}

variable "app_settings" {
  type = map(any)
  
}

