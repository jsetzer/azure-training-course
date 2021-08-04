resource "azurerm_resource_group" "myTerraformGroup" {
#  name     = "myTerrafromGroup"
#  location = "West Europe"
  name = var.resourceGroupName
  location = var.location
  tags = var.tags
}