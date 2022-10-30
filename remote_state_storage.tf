# Creates random string for the Unique ID for the Azure Storage Account Name
resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false
}


resource "azurerm_storage_account" "tfstate" {
     name                      = "tfstate${random_string.resource_code.result}"
     resource_group_name       =  local.resource_group.name
     location                  = local.resource_group.location
     account_tier              = "Standard"
     account_replication_type  = "LRS"
  #   allow_blob_public_access  = true

     tags = {
       environment = "dev"
     }

    depends_on = [

      azurerm_resource_group.ramcheek-rg
    ]

   }

   resource "azurerm_storage_container" "tfstate" {
     name                  = "tfstate"
     storage_account_name  = azurerm_storage_account.tfstate.name
     container_access_type = "blob"

     depends_on = [

       azurerm_storage_account.tfstate
     ]

   }

