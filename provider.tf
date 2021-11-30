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
provider "azurerm" {
  features {}
}

#create an resource group
resource "azurerm_resource_group" "demoresourcegrp"{
    location = "eastus"
    name = "demoresource"
}