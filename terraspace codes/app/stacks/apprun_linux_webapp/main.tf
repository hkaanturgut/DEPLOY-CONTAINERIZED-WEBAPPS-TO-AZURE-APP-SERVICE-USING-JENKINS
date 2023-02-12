// *** Create Resource Group Values ***
module "resource_group" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

# Service Plan
module "service_plan" {
  source                = "../../modules/service_plan"
  service_plan_name     = var.service_plan_name
 resource_group_name      = module.resource_group.name
  location                 = module.resource_group.location
  service_plan_sku_name = var.service_plan_sku_name
  service_plan_os_type  = var.service_plan_os_type
}

#   Linux WebApp
module "linux_webapp" {
  source = "../../modules/linux_webapp"
  linux_webapp_name = var.linux_webapp_name
  resource_group_name      = module.resource_group.name
  location                 = module.resource_group.location
  service_plan_id     = module.service_plan.id
  always_on=var.always_on
  docker_image=var.docker_image
  docker_image_tag=var.docker_image_tag
  app_settings=var.app_settings
}
