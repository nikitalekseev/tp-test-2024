#Resource group
resource "azurerm_resource_group" "rg_resource" {
  for_each = {
    for obj in local.all_envs : "${obj.rg_name}" => obj ...
  }
  
  name      = each.key
  location  = each.value[0].location
  tags      = each.value[0].tags
}

#Azure Service Bus Namespace
resource "azurerm_servicebus_namespace" "asbn_resource" {
  for_each = {
    for obj in local.all_envs : "${obj.asbn_name}" => obj ...
  }

  name                = each.key
  location            = each.value[0].location
  resource_group_name = azurerm_resource_group.rg_resource[each.value[0].rg_name].name
  sku                 = "Standard"
  tags                = each.value[0].tags
}

#Azure Service Bus Namespace Queueu
resource "azurerm_servicebus_queue" "asbn_queue_resource" {
  for_each = {
    for obj in local.all_envs : "${obj.rg_name}_${obj.asbn_name}_${obj.queue_name}" => obj
  }

  name         = each.value.queue_name
  namespace_id = azurerm_servicebus_namespace.asbn_resource[each.value.asbn_name].id

  enable_partitioning = true
}
