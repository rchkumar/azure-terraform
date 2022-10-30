locals {

  resource_group = {

    name = "ramcheek-rg"
    location = "southindia"

  }

  virtual_network = {

    name                = "ram-vnet"
    address_space       = ["10.0.0.0/16"]

  }

  subnets = {

    name                 = "comics-subnet"
    address_prefixes     = ["10.0.0.0/24"]
  }

}