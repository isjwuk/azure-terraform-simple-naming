### These variables are used for configuring the naming module. 

variable "location" {
  type        = string
  description = "Where you want the resources to be hosted"
  default     = "UK South"
}

variable "application_shortcode" {
  type        = string
  description = "Application Shortcode. 3 letters"
  validation {
    condition     = length(var.application_shortcode) == 3
    error_message = "Application shortcode must be exactly 3 letters."
  }
}

variable "environment" {
  type        = string
  description = "Environment Name (e.g., production, development, test, uat, preprod)"
  default = "prod"
  validation {
    condition     = contains(["production", "development", "test", "uat", "preprod"], var.environment)
    error_message = "Invalid input, options: \"production\", \"development\", \"test\", \"uat\", \"preprod\"."
  }
}


