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
docker_image= "apprun"
docker_image_tag= "10"
app_settings= {
           "DOCKER_REGISTRY_SERVER_PASSWORD"     = "hx+MC269ugjt+X/V/LsIuCjVdIuch6tfYKyq2Qdpi3+ACRB5H0Hr"
           "DOCKER_REGISTRY_SERVER_URL"          = "https://jenkinsacrkaan.azurecr.io"
           "DOCKER_REGISTRY_SERVER_USERNAME"     = "jenkinsacrkaan"
           "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    }


