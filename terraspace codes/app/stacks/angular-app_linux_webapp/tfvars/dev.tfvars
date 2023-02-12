resource_group_name = "project-rg"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}
service_plan_name       = "example-serviceplan"
service_plan_sku_name   = "B1"
service_plan_os_type    = "Linux"
linux_webapp_name     = "angular-app-webapp"
always_on= true
docker_image= "angularapp"
docker_image_tag= "latest"
app_settings= {
           "DOCKER_REGISTRY_SERVER_PASSWORD"     = "KVD/2DPLNZkT4zexhW8akskHiwXLsVk3WtIJzIYM1n+ACRBpLrXX"
           "DOCKER_REGISTRY_SERVER_URL"          = "https://azdevopsacrkaan.azurecr.io"
           "DOCKER_REGISTRY_SERVER_USERNAME"     = "azdevopsacrkaan"
           "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    }


