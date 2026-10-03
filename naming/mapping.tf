# This file contains mappings of environment names, resource types, and location names etc. to their short forms to be used in resource naming conventions.

################ Map Environment Name to Short Form
locals {
  short_environment = {
    production  = "prd"
    development = "dev"
    test        = "tst"
    uat         = "uat"
    preprod     = "pre"
  }
}


################ Map Resource Type to Short Form
locals {
  short_resource_type = {
    resource_group = "rg"
    storage_account = "st"
    virtual_network = "vnet"
    subnet = "subnet"
    network_interface = "nic"
    virtual_machine = "vm"
    #TODO: Add more resource types as needed
  }
}

locals {
  resource_type=["resource_group", "storage_account", "virtual_network", "subnet", "network_interface", "virtual_machine"]
  #TODO: Add more resource types as needed
}


################ Map Location Name to Short Form  
locals {
  short_location = {
    "UK South" = "uks"
    "UK West"  = "ukw"
    "East US"  = "eus"
    "West US"  = "wus"
    #TODO: Add more location names as needed
  }
}