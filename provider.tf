# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0" #optional
    }
  }
}

# Configure the Microsoft Azure Provider
#dev environment
provider "azurerm" {
  features {} #if i use the first provider with a vm and delete the vm the storage will be deleted
}
#prod
#if i use the second provider and delete my vm the storage will not be deleted as in feature we put delete on disk false
provider "azurerm" {
  features {
      virtual_machine {
        delete_os_disk_on_deletion=false #this will ensure that when you destroy your virtual machine disk is not deleted.
      }
  }
  alias = "provider2-westus"
}
