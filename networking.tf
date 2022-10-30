resource "azurerm_virtual_network" "ramvnet" {

   name                = local.virtual_network.name
   address_space       = local.virtual_network.address_space
   resource_group_name = local.resource_group.name
   location            = local.resource_group.location

  depends_on = [

    azurerm_resource_group.ramcheek-rg

  ]

 }

resource "azurerm_subnet" "comicssubnet" {

   name = local.subnets.name
   resource_group_name  = local.resource_group.name
   virtual_network_name = local.virtual_network.name
   address_prefixes = local.subnets.address_prefixes

  depends_on = [

    azurerm_virtual_network.ramvnet

  ]

 }

resource "azurerm_public_ip" "comicspublicip" {

   name                        = "comics-publicip"
   resource_group_name         = local.resource_group.name
   location                    = local.resource_group.location
   allocation_method           = "Static"



 }