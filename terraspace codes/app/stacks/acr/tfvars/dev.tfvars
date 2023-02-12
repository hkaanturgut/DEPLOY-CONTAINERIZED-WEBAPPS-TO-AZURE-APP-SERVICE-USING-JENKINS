// *** Resorce Group Values ***
resource_group_name = "Jenkins-Apps-RG"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}

// *** Azure Container Registery (ACR) Values ***
  acr_name            = "jenkinsacrkaan"
  sku                 = "Premium"
  admin_enabled       = true
