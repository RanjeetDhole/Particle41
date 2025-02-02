# resource group name (data or import)
# network security group
# virtual network 
#   1.subnet1
#   2.subnet2
# tag      


provider "azurerm" {

  skip_provider_registration = "true"


  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features {}
}

data "azurerm_resource_group" "ranjeet-test" {
  name = var.azurerm_resource_group
}

resource "azurerm_network_security_group" "mysg" {
  name                = var.security_group_name
  location            = data.azurerm_resource_group.ranjeet-test.location
  resource_group_name = data.azurerm_resource_group.ranjeet-test.name

}

resource "azurerm_virtual_network" "My-vnet" {

  name                = var.azurerm_virtual_network
  location            = data.azurerm_resource_group.ranjeet-test.location
  resource_group_name = data.azurerm_resource_group.ranjeet-test.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers
  
  subnet  {
    name           = "subnet1"
    address_prefixes = [var.subnet_1]

  }
  subnet {
    name           = "subnet2"
    address_prefixes = [var.subnet_2]
    security_group = azurerm_network_security_group.mysg.id
  }

  tags = {
    environment = "dev"
  }

}