resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
resource "azurerm_container_group" "aci" {
  name                = "cloudscale-app-container"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_address_type     = "Public"
  dns_name_label      = "cloudscale-app-${random_string.unique_dns.result}"
  os_type             = "Linux"
  container {
    name   = "webserver"
    image  = var.docker_image
    cpu    = "0.5"
    memory = "1.5"
    ports {
      port     = 80
      protocol = "TCP"
    }
  }
  tags = {
    Environment = "production"
    Project     = "Project 2"
  }
}
resource "random_string" "unique_dns" {
  length  = 8
  special = false
  upper   = false
}
