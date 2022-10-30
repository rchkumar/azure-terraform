  # Outputs
   output "storage_account_name" {
      value = azurerm_storage_account.tfstate.name
   }

   output "storage_container_name" {
     value = azurerm_storage_container.tfstate.name
   }



  output "resource_group_name" {
  value = azurerm_resource_group.ramcheek-rg.id
}

output "vnet_address_space" {
  value = azurerm_virtual_network.ramvnet.address_space
}

output "subnet_prefixes" {
  value = azurerm_subnet.comicssubnet.address_prefixes
}

output "public_ip_address" {
  value = azurerm_public_ip.comicspublicip.ip_address
}

output "location" {
  value = azurerm_resource_group.ramcheek-rg.location
}