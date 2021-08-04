resource "azurerm_network_interface" "myTerraformNic" {
  name                = var.nicname
  location            = var.location
  resource_group_name = azurerm_resource_group.myTerraformGroup.name


  ip_configuration {
    name                          = "internal"
    subnet_id  = azurerm_subnet.myTerraformSubnet.name
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.example.id
  }

  tags = var.tags
}

resource "azurerm_network_interface_application_security_group_association" "example" {
  network_interface_id          = azurerm_network_interface.myTerraformNic.id
  application_security_group_id = azurerm_application_security_group.myTerraformSg.id
}
