variable "certificate_permissions" {
  type = list(string)
  default = [
    "Get",
    "List",
    "Update",
    "Create",
    "Import",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
    "ManageContacts",
    "ManageIssuers",
    "GetIssuers",
    "ListIssuers",
    "SetIssuers",
    "DeleteIssuers",
  ]
}

variable "key_permissions" {
  type = list(string)
  default = [
    "Get",
    "List",
    "Update",
    "Create",
    "Import",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
    "GetRotationPolicy",
    "SetRotationPolicy",
    "Rotate",
  ]
}

variable "secret_permissions" {
  type = list(string)
  default = [
    "Get",
    "List",
    "Set",
    "Delete",
    "Recover",
    "Backup",
    "Restore",
  ]
}

variable "key_name" {
  type = string
}
variable "tenant_id" {
  type = string
}

variable "tags" {
  type = map(any)
}

variable "key_vault" {
  type = object({
    name                       = string
    location                   = string
    resource_group_name        = string
    sku_name                   = string
    soft_delete_retention_days = number
  })
}
