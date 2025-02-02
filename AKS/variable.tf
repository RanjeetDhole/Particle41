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
  type    = string
  default = "ranjeet-test"

}

variable "azurerm_virtual_network" {
  type    = string
  default = "myvirtual-network"

}

variable "cluster_name" {
  type    = string
  default = "astoncluster"

}

variable "dns_prefix" {
  type    = string
  default = "aksastondnsprefix1"

}

variable "vm_size" {
  type    = string
  default = "Standard_DS2_v2"

}

variable "node_count" {
  type    = string
  default = "1"

}