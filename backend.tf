

terraform {
  backend "azurerm" {
    resource_group_name  = "ramcheek-rg"
    storage_account_name = "tfstatezbevl"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}



