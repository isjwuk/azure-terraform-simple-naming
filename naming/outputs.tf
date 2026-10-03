# This outputs a resource name based on a provided type. If you want the components of the name in a different order, modify this

locals {
  #Generate the default names for each resource type, based on the provided application shortcode, environment and location. 
  default_names = {
    for rt in keys(local.short_resource_type) :
    rt => "${local.short_resource_type[rt]}-${var.application_shortcode}-${local.short_environment[var.environment]}-${local.short_location[var.location]}"
  }

  #Add additional rules for specific resource types.
  # Storage account names have a maximum length of 24 characters, so we need to truncate the generated name to fit within this limit. 
  # We also need to remove any hyphens from the name, as storage account names can only contain lowercase letters and numbers.
  storage_name  = lower(replace("${local.short_resource_type["storage_account"]}${var.application_shortcode}${local.short_environment[var.environment]}${local.short_location[var.location]}", "-", ""))
  storage_names = { "storage_account" = substr(local.storage_name, 0, 24) }

  #Merge the default names and the additional rules for specific resource types into a single map of final names.
  final_names = merge(local.default_names, local.storage_names)
}

output "resource_name" {
  type  = map(string)
  value = local.final_names
}