resource "azurerm_lb" "comicslb" {
   name                = "cosmics-loadBalancer"
   resource_group_name = local.resource_group.name
   location            = local.resource_group.location

   frontend_ip_configuration {
     name                 = "publicIPAddress"
     public_ip_address_id = azurerm_public_ip.comicspublicip.id
   }
 }


resource "azurerm_lb_backend_address_pool" "comicsbackendpool" {
   loadbalancer_id     = azurerm_lb.comicslb.id
   name                = "BackendAddressPool"

  depends_on = [

    azurerm_lb.comicslb
  ]
 }