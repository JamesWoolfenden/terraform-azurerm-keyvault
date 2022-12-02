resource "azurerm_key_vault" "example" {
  name                       = var.key_vault.name
  location                   = var.key_vault.location
  resource_group_name        = var.key_vault.resource_group_name
  tenant_id                  = var.tenant_id
  sku_name                   = var.key_vault.sku_name
  soft_delete_retention_days = var.key_vault.soft_delete_retention_days
  purge_protection_enabled   = true
  network_acls {
    default_action = "Deny"
    bypass         = "AzureServices"
  }
  tags = var.tags
}
