resource "azurerm_mssql_server" "azureserver" {
  name                         = "devmssqlserver9786"
  resource_group_name          = var.rgname
  location                     = var.loc
  version                      = "12.0"
  administrator_login          = "devuser"
  administrator_login_password = "Pamanu2friends*"
  tags = var.tag
}

resource "azurerm_mssql_database" "azuredb" {
  name         = "devmssqlsdb9786"
  server_id    = azurerm_mssql_server.azureserver.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"

  tags = var.tag
}