resource "azurerm_service_plan" "service_plan" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = var.service_plan_sku_name
  os_type             = var.service_plan_os_type
}
