# This file contains mappings of environment names, resource types, and location names etc.
# to their short forms to be used in resource naming conventions.

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
    resource_group         = "rg"
    storage_account        = "st"
    virtual_network        = "vnet"
    subnet                 = "snet"
    network_interface      = "nic"
    network_security_group = "nsg"
    public_ip              = "pip"
    route_table            = "rt"
    application_gateway    = "agw"
    load_balancer          = "lbe"
    virtual_machine        = "vm"
    vm_scale_set           = "vmss"
    availability_set       = "avail"
    disk                   = "disk"
    osdisk                 = "osdisk"
    managed_identity       = "id"
    key_vault              = "kv"
    storage_share          = "share"
    container_registry     = "cr"
    aks                    = "aks"
    app_service_plan       = "asp"
    web_app                = "app"
    function_app           = "func"
    sql_server             = "sql"
    sql_database           = "sqldb"
    cosmos_db              = "cosmos"
    redis_cache            = "amr"
    api_management         = "apim"
    event_hub              = "evh"
    service_bus            = "sbns"
    vpn_gateway            = "vpng"
    application_insights   = "appi"
    log_analytics          = "log"
    # CAF recommended abbreviations (partial list). Add more as needed.
    # https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations
  }
}

################ Map Location Name to Short Form  
locals {
  short_location = {
    "East US"                 = "eus"
    "East US 2"               = "e2u"
    "East US 3"               = "e3u"
    "Central US"              = "cus"
    "North Central US"        = "ncu"
    "South Central US"        = "scu"
    "West US"                 = "wus"
    "West US 2"               = "w2u"
    "West US 3"               = "w3u"
    "North Europe"            = "neu"
    "West Europe"             = "weu"
    "UK South"                = "uks"
    "UK West"                 = "ukw"
    "France Central"          = "frc"
    "France South"            = "frs"
    "Germany West Central"    = "gwc"
    "Germany North"           = "gnc"
    "Norway East"             = "nre"
    "Norway West"             = "nrw"
    "Sweden Central"          = "swc"
    "Sweden South"            = "sws"
    "Switzerland North"       = "swn"
    "Switzerland West"        = "sww"
    "UAE North"               = "uan"
    "UAE Central"             = "uac"
    "South Africa North"      = "sfn"
    "South Africa West"       = "sfw"
    "Canada Central"          = "cac"
    "Canada East"             = "cae"
    "Brazil South"            = "brs"
    "Australia East"          = "aue"
    "Australia Southeast"     = "aus"
    "Australia Central"       = "auc"
    "Australia Central 2"     = "a2c"
    "Japan East"              = "jpe"
    "Japan West"              = "jpw"
    "Korea Central"           = "krc"
    "Korea South"             = "krs"
    "Southeast Asia"          = "sea"
    "East Asia"               = "eas"
    "Central India"           = "cin"
    "South India"             = "sin"
    "West India"              = "win"
    "China East"              = "che"
    "China East 2"            = "c2e"
    "China North"             = "chn"
    "China North 2"           = "c2n"
    "West Europe (Secondary)" = "we2"
    # Add or adjust entries to match the Azure region strings you pass in
  }
}