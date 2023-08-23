resource "azurerm_key_vault_access_policy" "pike" {
  key_vault_id            = azurerm_key_vault.example.id
  object_id               = random_uuid.test.result
  tenant_id               = var.tenant_id
  certificate_permissions = var.certificate_permissions
  key_permissions         = var.key_permissions
  secret_permissions      = var.secret_permissions
}
resource "random_uuid" "test" {
}
