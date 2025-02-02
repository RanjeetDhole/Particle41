variable "subscription_id" {
    type = string
    default = ""
}

variable "client_id" {
    type = string
    default = ""
  
}

variable "client_secret" {
    type = string
    default = ""
  
}

variable "tenant_id" {
    type = string
    default = ""
  
}

variable "azurerm_resource_group" {
    type = string
    default = "ranjeet-test"
  
}

variable "azurerm_virtual_network" {
    type = string
    default = "myvirtual-network"
  
}

variable "address_space" {
    type = list
    default = ["10.0.0.0/16"]
  
}

variable "dns_servers" {
    type = list 
    default = ["10.0.0.4", "10.0.0.5"]
  
}

variable "subnet_1" {
    type = string
    default = "10.0.1.0/24"
  
}

variable "subnet_2" {
    type = string
    default =  "10.0.2.0/24"
  
}

variable "security_group_name" {
    type = string
    default = "mysecuritygroup"
  
}