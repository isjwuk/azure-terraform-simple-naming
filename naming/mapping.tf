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
    # Also add long name to resource_type list below.
  }
}

locals {
  resource_type = [
    "resource_group",
    "storage_account",
    "virtual_network",
    "subnet",
    "network_interface",
    "network_security_group",
    "public_ip",
    "route_table",
    "application_gateway",
    "load_balancer",
    "virtual_machine",
    "vm_scale_set",
    "availability_set",
    "disk",
    "osdisk",
    "managed_identity",
    "key_vault",
    "storage_share",
    "container_registry",
    "aks",
    "app_service_plan",
    "web_app",
    "function_app",
    "sql_server",
    "sql_database",
    "cosmos_db",
    "redis_cache",
    "api_management",
    "event_hub",
    "service_bus",
    "vpn_gateway",
    "application_insights",
    "log_analytics",
  ]
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