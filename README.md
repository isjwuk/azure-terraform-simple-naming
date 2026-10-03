# Simple Azure Naming Module
## Introduction
This project demonstrates a very simple Azure naming module, built entirely in Terraform. The
intention of this module is to provide a configurable, but minimal naming structure for Azure Resources. It won't cover extremely complex or very specific naming requirements, and there are other solutions which can be used in those scenarios, some of which are listed below.

Abbreviations for resource types are based on the [Azure CAF Best Practice](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations).

## Requirements
* Terraform version >= 1.15.0 (Output Type Constraints were introduced here.)

## Usage
See ``example_usage.tf`` for an example which generates some example resource names.

* Reference the naming module, providing a shortcode for the application and details of the environment (tier, location etc...)
* Use the module reference to generate names based on resource type.
* Terraform init, plan, apply!

### Example Usage in Azure Verified Modules
```terraform
#Reference the naming module and describe this application and environment
module "naming" {
  source                = "./naming"
  application_shortcode = "aaa"
  environment           = "production"  
  location              = "UK South"
}

#Create A Resource Group
module "avm-res-resources-resourcegroup" {
  source   = "Azure/avm-res-resources-resourcegroup/azurerm"
  version  = "0.4.0"
  location = "UK South"
  # Use the Naming module to generate the name
  name     = module.naming["resource_group"]
}

module "avm-res-compute-virtualmachine" {
  source              = "Azure/avm-res-compute-virtualmachine/azurerm"
  version             = "0.21.0"
  # Provide the distinguishing number in the name by adding it to the generated one
  name                = "${module.naming["virtual_machine"]}-01" 
  resource_group_name = module.avm-res-resources-resourcegroup.name
  location            = module.avm-res-resources-resourcegroup.location
  zone                = 1
}
```

## Alternative Naming Conventions
To adjust the naming convention, rearrange the components in ``.\naming\outputs.md``. More components can be added by including additional variables and following the pattern.

## Future Development
* ``TODO`` markers have been used in the code to pick out some obvious future improvements.
* Child Resources (Subnets, NICs, disks etc)

## Alternatives
If this doesn't fit your naming needs, there's plenty of alternatives out there. Here are a few to look at:

* [Azure Verified Modules](https://registry.terraform.io/modules/Azure/avm-utl-naming/azure/latest)
* [AzureRM](https://registry.terraform.io/modules/Azure/naming/azurerm/latest)
