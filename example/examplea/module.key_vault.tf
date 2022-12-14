module "key_vault" {
  source = "../../"

  expiration_date = time_offset.pike.rfc3339
  tenant_id       = "8e7f742a-4215-44a0-881b-209124f286b1"
  key_name        = "pike"
  key_vault = {
    name                       = "pike"
    location                   = "uksouth"
    resource_group_name        = "pike"
    sku_name                   = "premium"
    soft_delete_retention_days = 7
  }
  tags = {
    pike = "permissions"
  }
}


resource "time_offset" "pike" {
  offset_days = 7
}
