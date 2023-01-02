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

resource "azurerm_virtual_network" "syed_vnet" {
  name                = "vnet_syed"
  location            = "eastus"
  resource_group_name = "syedresg"
  address_space       = ["10.0.0.0/16"]
 

}