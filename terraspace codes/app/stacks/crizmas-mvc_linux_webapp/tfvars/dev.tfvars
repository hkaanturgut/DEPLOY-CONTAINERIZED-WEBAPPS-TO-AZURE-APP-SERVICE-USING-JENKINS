resource_group_name = "project3-rg"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}
service_plan_name       = "example3-serviceplan"
service_plan_sku_name   = "B1"
service_plan_os_type    = "Linux"
linux_webapp_name     = "chrizmas-mvc-app-webapp"
always_on= true
docker_image= "crizmasmvcapp"
docker_image_tag= "latest"
app_settings= {
           "DOCKER_REGISTRY_SERVER_PASSWORD"     = "A1Jykvs/2nEBb2TSJ1+v/RNZ0uLk9c37ihZHP/7NXk+ACRBhSTm6"
           "DOCKER_REGISTRY_SERVER_URL"          = "https://azdevopsacrkaan.azurecr.io"
           "DOCKER_REGISTRY_SERVER_USERNAME"     = "azdevopsacrkaan"
           "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    }


