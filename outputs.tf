output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}
output "container_ip" {
  value = azurerm_container_group.aci.ip_address
}
output "container_fqdn" {
  value = "http://${azurerm_container_group.aci.fqdn}"
}
