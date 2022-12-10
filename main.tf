module "resource_group" {
  source  = "bcochofel/resource-group/azurerm"
  version = "1.4.1"
  location = "West US"
  name = "test_public_module_rg"
  lock_level = "ReadOnly"
  tags = {
    environment = "dev",
    author = "erol",
    managedBy = "Terraform"
  }
}

resource "azurerm_storage_account" "storageaccount" {
  name                     = "stdeop2deopuswestdev"
  resource_group_name      = module.resource_group.name
  location                 = "West US"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "dev"
  }
}
