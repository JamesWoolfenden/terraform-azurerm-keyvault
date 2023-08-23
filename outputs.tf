output "key_vault" {
  value = azurerm_key_vault.example
}
output "policy" {
  value = azurerm_key_vault_access_policy.pike
}
output "key" {
  value = azurerm_key_vault_key.pike
}
