resource_group_name = "project-rg"
location = "canadacentral"
tags = {
  Enviroment = "dev"
}
service_plan_name       = "example-serviceplan"
service_plan_sku_name   = "B1"
service_plan_os_type    = "Linux"
linux_webapp_name     = "example-webapp"
app_settings= {
           "DOCKER_REGISTRY_SERVER_PASSWORD"     = "eSS8/6UulYYxokORvuF06E6CdqJmRAnmo2f492DB/6+ACRD+Qopo"
           "DOCKER_REGISTRY_SERVER_URL"          = "https://kaandemoprojectacr.azurecr.io"
           "DOCKER_REGISTRY_SERVER_USERNAME"     = "kaandemoprojectacr"
           "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    }


