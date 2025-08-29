resource "azurerm_resource_group" "azurerg" {
    name = var.rgname
    location = var.loc
    tags = var.tag
}

output "az_rg" {
    value = azurerm_resource_group.azurerg.name
}