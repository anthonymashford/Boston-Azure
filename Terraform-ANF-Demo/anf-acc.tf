# Create Azure NetApp Files Account 1
resource "azurerm_netapp_account" "anf_acc_1" {
  name                = "anf-${var.use}-${var.prefix}-${var.region_1}-${random_string.random_1.result}"
  resource_group_name = azurerm_resource_group.rg_1.name
  location            = var.region_1

  # Acitve Directory configuration. 
  # Uncomment this section if you need to add Active Directory configuration and amend the .tfvars file to suit.
  /*
  active_directory {
    username            = data.azurerm_key_vault_secret.labadmin.name
    password            = data.azurerm_key_vault_secret.labadmin.value
    smb_server_name     = var.prefix
    dns_servers         = [var.dns_server_1]
    domain              = var.domain
    organizational_unit = var.ou
  }
*/
  tags = {
    Environment = var.tag_environment
    CreatedBy   = var.tag_createdby
    CreatedWith = var.tag_createdwith
    Project     = var.tag_project
  }

}

# Create Azure NetApp Files Account 2
resource "azurerm_netapp_account" "anf_acc_2" {
  name                = "anf-${var.use}-${var.prefix}-${var.region_2}-${random_string.random_2.result}"
  resource_group_name = azurerm_resource_group.rg_2.name
  location            = var.region_2

  # Acitve Directory configuration. 
  # Uncomment this section if you need to add Active Directory configuration and amend the .tfvars file.
  /*  
  active_directory {
    username            = data.azurerm_key_vault_secret.join.name
    password            = data.azurerm_key_vault_secret.join.value
    smb_server_name     = var.prefix
    dns_servers         = [var.dns_server_4]
    domain              = var.domain
    organizational_unit = var.ou
  }
*/
  tags = {
    Environment = var.tag_environment
    CreatedBy   = var.tag_createdby
    CreatedWith = var.tag_createdwith
    Project     = var.tag_project
  }

}