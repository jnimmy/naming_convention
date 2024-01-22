variable "naming_convention_config" {
  description = "Follow the naming convention as per Azure Best Practises"

  type = object({
    application_name = string
    module_name      = string
    instance_number  = string
    environment      = string
    location         = string
    resource_name    = string
  })
} 