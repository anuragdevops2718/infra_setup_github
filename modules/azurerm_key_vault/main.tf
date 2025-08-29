data "azurerm_client_config" "config" {}


resource "azurerm_key_vault" "azurekv" {
  name                        = "devkv9786"
  location                    = var.loc
  resource_group_name         = var.rgname
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.config.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  tags =var.tag

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.config.tenant_id
    object_id = data.azurerm_client_config.config.object_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
}