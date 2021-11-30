resource "azurerm_resource_group" "demoresourcegrp"{
    location = "eastus"
    name = "demoresource-eastus"
}
resource "azurerm_resource_group" "demoresourcegrp"{
    location = "westus"
    name = "demoresource-westus"
    provider = azurerm.provider2-westus
}