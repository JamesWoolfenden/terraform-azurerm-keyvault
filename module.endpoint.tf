module "private-endpoint" {
  source      = "git::https://github.com/JamesWoolfenden/terraform-azurerm-private-endpoint.git?ref=dd10f838be3d99a3b6682afba406c73ee0c90989"
  common_tags = var.tags
  location    = azurerm_resource_group.example.location
  rg_name     = azurerm_resource_group.example.name
  subnet_id   = azurerm_subnet.endpoint.id
  name        = "pike"
}
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
resource "azurerm_subnet" "endpoint" {
  #checkov:skip=CKV2_AZURE_31:example
  name                 = "endpoint"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]

  private_endpoint_network_policies_enabled = true
}
