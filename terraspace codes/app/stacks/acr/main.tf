// *** Create Resource Group Values ***
module "acr_resource_group" {
  source              = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

// *** Create Azure Container Registery (ACR) ***
module "az_container_registry" {
  source              = "../../modules/acr"
  acr_name            = var.acr_name
  resource_group_name = module.acr_resource_group.name
  location            = module.acr_resource_group.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled
}
