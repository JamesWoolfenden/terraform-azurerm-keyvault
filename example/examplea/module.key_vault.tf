module "key_vault" {
  source = "../../"

  expiration_date       = time_offset.pike.rfc3339
  tenant_id             = "8e7f742a-4215-44a0-881b-209124f286b1"
  public_network_access = true
  key_name              = "pike"
  key_vault = {
    name                       = "pike"
    location                   = "uksouth"
    resource_group_name        = "pike"
    sku_name                   = "premium"
    soft_delete_retention_days = 7
  }
  allowed_ips = [module.data.ip]
  tags = {
    pike = "permissions"
  }
}
resource "time_offset" "pike" {
  offset_days = 7
}
module "data" {
  source = "git::https://github.com/JamesWoolfenden/terraform-http-ip.git?ref=6e651695dc636de858961f36bc54ffe9e744e946"
}
