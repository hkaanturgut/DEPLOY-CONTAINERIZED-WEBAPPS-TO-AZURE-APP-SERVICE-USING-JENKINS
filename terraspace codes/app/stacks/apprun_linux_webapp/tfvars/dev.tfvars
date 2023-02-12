resource_group_name = "AppRun-App-RG"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}
service_plan_name       = "example-serviceplan"
service_plan_sku_name   = "B1"
service_plan_os_type    = "Linux"
linux_webapp_name     = "apprun-webapp"
always_on= true
docker_image= "apprunrealworldexampleapp"
docker_image_tag= "138"
app_settings= {
           "DOCKER_REGISTRY_SERVER_PASSWORD"     = "A1Jykvs/2nEBb2TSJ1+v/RNZ0uLk9c37ihZHP/7NXk+ACRBhSTm6"
           "DOCKER_REGISTRY_SERVER_URL"          = "https://azdevopsacrkaan.azurecr.io"
           "DOCKER_REGISTRY_SERVER_USERNAME"     = "azdevopsacrkaan"
           "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    }


