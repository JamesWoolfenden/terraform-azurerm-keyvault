resource "azurerm_key_vault_key" "pike" {
  # checkov:skip=CKV_AZURE_112: Its a bit excessive
  name         = var.key_name
  key_vault_id = azurerm_key_vault.example.id
  key_type     = "RSA"
  key_size     = 2048

  key_opts   = var.key_opts
  depends_on = [azurerm_key_vault_access_policy.pike]
}


variable "key_opts" {
  type = list(string)
  default = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]

}