locals {
  # https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations
  # https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules
  resource_map = {
    azurerm_virtual_network = {
      name            = "vnet"
      add_instance_id = true
      max_name_length = 64
      add_separator   = true
    }
    azurerm_subnet = {
      name            = "snet"
      add_instance_id = true
      max_name_length = 80
      add_separator   = true
    }
    azurerm_resource_group = {
      name            = "rg"
      add_instance_id = true
      max_name_length = 90
      add_separator   = true
    }
    azurerm_key_vault = {
      name            = "kv"
      add_instance_id = false
      max_name_length = 24
      add_separator   = true
    }
    azurerm_key_vault_secret = {
      name            = "kvs"
      add_instance_id = false
      max_name_length = 127
      add_separator   = true
    }
    azurerm_user_assigned_identity = {
      name            = "id"
      add_instance_id = true
      max_name_length = 128
      add_separator   = true
    }
    azurerm_mssql_database = {
      name            = "sqldb"
      add_instance_id = true
      max_name_length = 63
      add_separator   = true
    }
    azurerm_kubernetes_cluster = {
      name            = "aks"
      add_instance_id = false
      max_name_length = 63
      add_separator   = true
    }
    azurerm_mssql_server = {
      name            = "sql"
      add_instance_id = false
      max_name_length = 63
      add_separator   = true
    }
    azurerm_mssql_elasticpool = {
      name            = "sqlep"
      add_instance_id = false
      max_name_length = 63
      add_separator   = true
    }
    azurerm_log_analytics_workspace = {
      name            = "log"
      add_instance_id = false
      max_name_length = 63
      add_separator   = true
    }
    azurerm_container_registry = {
      name            = "acr"
      add_instance_id = false
      max_name_length = 63
      add_separator   = false
    }
    azurerm_storage_account = {
      name            = "st"
      add_instance_id = false
      max_name_length = 24
      add_separator   = false
    }
    azurerm_storage_container = {
      name            = "stct"
      add_instance_id = false
      max_name_length = 63
      add_separator   = false
    }
    azurerm_virtual_machine = {
      name            = "vm"
      add_instance_id = true
      max_name_length = 15
      add_separator   = true
    }
    azurerm_virtual_machine_extension = {
      name            = "vmx"
      add_instance_id = true
      max_name_length = 80
      add_separator   = true
    }
    azurerm_role_assignment = {
      name            = "ra"
      add_instance_id = true
      max_name_length = 64
      add_separator   = true
    }
    azurerm_role_definition = {
      name            = "rd"
      add_instance_id = true
      max_name_length = 64
      add_separator   = true
    }
    azurerm_key_vault_key = {
      name            = "kvk"
      add_instance_id = false
      max_name_length = 64
      add_separator   = true
    }
    azurerm_monitor_diagnostic_setting = {
      name            = "mds"
      add_instance_id = false
      max_name_length = 64
      add_separator   = true
    }
    azurerm_public_ip = {
      name            = "pip"
      add_instance_id = true
      max_name_length = 64
      add_separator   = true
    }
    azurerm_application_insights = {
      name            = "appi"
      add_instance_id = false
      max_name_length = 64
      add_separator   = true
    }
    azurerm_firewall = {
      name            = "afw"
      add_instance_id = false
      max_name_length = 80
      add_separator   = true
    }
    azurerm_firewall_policy = {
      name            = "afwp"
      add_instance_id = false
      max_name_length = 80
      add_separator   = true
    }
    azurerm_federated_identity_credential = {
      name            = "fic"
      add_instance_id = false
      max_name_length = 80
      add_separator   = true
    }
  }
}