# This is where you put your outputs declaration
// *** Azure Resource Group Outputs ***
output "location" {
  description = "Location"
  value       = azurerm_resource_group.resource_group.location
}
output "name" {
  description = "Name"
  value       = azurerm_resource_group.resource_group.name
}