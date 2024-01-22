locals {
  location_nullcatch = var.naming_convention_config.location == null ? "" : var.naming_convention_config.location
  separator          = local.resource_map[var.naming_convention_config.resource_name].add_separator ? "-" : ""
  name               = var.naming_convention_config.module_name == null || var.naming_convention_config.module_name == "" ? "${local.separator}${var.naming_convention_config.application_name}" : "${local.separator}${var.naming_convention_config.application_name}${local.separator}${var.naming_convention_config.module_name}"
  environment        = var.naming_convention_config.environment == null || var.naming_convention_config.environment == "" ? "" : "${local.separator}${var.naming_convention_config.environment}"
  location           = var.naming_convention_config.location == null || contains(keys(local.location_map), local.location_nullcatch) == false ? "" : "${local.separator}${local.location_map[var.naming_convention_config.location]}"
  instance_number    = var.naming_convention_config.instance_number == null || local.resource_map[var.naming_convention_config.resource_name].add_instance_id == false ? "" : "${local.separator}${format("%03d", var.naming_convention_config.instance_number)}"
  long_name          = lower("${local.resource_map[var.naming_convention_config.resource_name].name}${local.name}${local.environment}${local.location}${local.instance_number}")
  final_name         = trimsuffix(substr(local.long_name, 0, local.resource_map[var.naming_convention_config.resource_name].max_name_length), "-")
}