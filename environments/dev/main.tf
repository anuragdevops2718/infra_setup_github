
module "azure_rg" {
    source = "../../modules/azurerm_rg"
    rgname = "dev_rg_9786"
    loc = "westus"
    tag = var.common_tag
}

module "azure_stg" {
    source = "../../modules/azurerm_storage_account"
    name = "devstg9786"
    rgname = module.azure_rg.az_rg
    loc = "westus"
    tag = var.common_tag
}

module "azuresql" {
    source ="../../modules/azurerm_sql"
    rgname = module.azure_rg.az_rg
    loc= "westus"
    tag= var.common_tag
}

module "azurekv" {
    source = "../../modules/azurerm_key_vault"
     rgname = module.azure_rg.az_rg
    loc= "westus"
    tag= var.common_tag
}

