resource_group_name = "Tetris-App-RG"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}
service_plan_name       = "example1-serviceplan"
service_plan_sku_name   = "B1"
service_plan_os_type    = "Linux"
linux_webapp_name     = "tetris-game-webapp"
always_on= true
docker_image= "tetris"
docker_image_tag= "latest"
app_settings= {
           "DOCKER_REGISTRY_SERVER_PASSWORD"     = "hx+MC269ugjt+X/V/LsIuCjVdIuch6tfYKyq2Qdpi3+ACRB5H0Hr"
           "DOCKER_REGISTRY_SERVER_URL"          = "https://jenkinsacrkaan.azurecr.io"
           "DOCKER_REGISTRY_SERVER_USERNAME"     = "jenkinsacrkaan"
           "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    }


