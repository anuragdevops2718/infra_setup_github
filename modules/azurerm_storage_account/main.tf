resource "azurerm_storage_account" "azurestg" {
    name=var.name
    location=var.loc
    resource_group_name=var.rgname
    account_tier= "Standard"
    account_replication_type="LRS"
    tags= var.tag
}