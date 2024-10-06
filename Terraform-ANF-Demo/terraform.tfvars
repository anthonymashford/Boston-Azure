######################################################################################
#                              (C) Mash'o'soft 2024                                  #
#                This file is used to define the variables for your lab              #
#                  Modify these parameters to meet your requirements                 #
######################################################################################
# Change to meet use case, i.e Demo, Lab, Testing etc.
use = "lab"
# Change this if you'd like to your demo tailor to client name
prefix = "Boston"
# If you would like to use diferent regions change this setting
region_1 = "northeurope"
# If you would like to use diferent regions change this setting
region_2 = "westeurope"
# Environment - Change this as required
tag_environment = "Lab"
# Created By - Change this as required
tag_createdby = "User"
# Created With - Change this as required
tag_createdwith = "Terraform"
# Project - Change this seeting to include a project title, purpose etc.
tag_project = "Boston Azure"
######################################################################################
#                     Network - Modify these parameters as required                  #
######################################################################################
vnet_1                 = "vnet-1"
vnet_2                 = "vnet-2"
address_space_region_1 = "172.11.0.0/16"
address_space_region_2 = "172.12.0.0/16"
dns_server_1           = "10.1.1.4"
dns_server_2           = "10.2.1.4"
dns_server_azure       = "168.63.129.16"
snet_1                 = "snet-1"
snet_2                 = "snet-2"
address_vnet_1_snet_1  = "172.11.1.0/24"
address_vnet_1_snet_2  = "172.11.2.0/24"
address_vnet_2_snet_1  = "172.12.1.0/24"
address_vnet_2_snet_2  = "172.12.2.0/24"
######################################################################################
#                 Virtual Machines - Modify these parameters as required             #
######################################################################################
labadmin             = "labadmin"
vm1_name             = "linux01"
vm2_name             = "linux02"
pip_allocation       = "Dynamic"
pip_sku              = "Basic"
nic_ip_allocation    = "Dynamic"
storage_account_type = "StandardSSD_LRS"
create_option        = "Empty"
disk_size_gb         = "10"
disk_caching         = "ReadWrite"
vm1_ip_address       = "Dynamic"
vm1_size             = "Standard_DS3_v2"
vm1_publisher        = "Canonical"
vm1_offer            = "UbuntuServer"
vm1_sku              = "16.04-LTS"
vm1_version          = "latest"
vm2_ip_address       = "Dynamic"
vm2_size             = "Standard_DS3_v2"
vm2_publisher        = "Canonical"
vm2_offer            = "UbuntuServer"
vm2_sku              = "16.04-LTS"
vm2_version          = "latest"
######################################################################################
#               Azure NetApp Files - Modify these parameters as required             #
######################################################################################
cap_pool_qos_type    = "Manual"
cap_pool_tier        = "Standard"
cap_pool_size        = "4"
vol_path_nfs         = "nfs-vol"
service_level_std    = "Standard"
protocol_nfs         = "NFSv3"
vol_size             = "1024"
service_tier         = "Standard"
vol_throughput_mibps = "16"