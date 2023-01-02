resource "azurerm_resource_group" "syed_resg" {
  name     = "syedresg"
  location = "eastus"
  tags = {
    project = "qtdevops"
    env = "prod"
  }
}

resource "azurerm_storage_account" "my_storageacc" {
  name                     = "syedsloveyou"
  resource_group_name      = "syedresg"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    project = "qtdevops"
    env = "prod"
  }
}