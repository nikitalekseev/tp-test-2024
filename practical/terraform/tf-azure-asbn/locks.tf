#Lock on Resource group
resource "azurerm_management_lock" "rg_lock" {
  for_each =  azurerm_resource_group.rg_resource
  name       = "${each.key}-lock"
  scope      = each.value.id
  lock_level = "CanNotDelete"
}

#Lock on Azure Service Bus Namespace
resource "azurerm_management_lock" "asbn_lock" {
  for_each =  azurerm_servicebus_namespace.asbn_resource
  name       = "${each.key}-lock"
  scope      = each.value.id
  lock_level = "CanNotDelete"
}

#Lock on Azure Service Bus Namespace Queueu
resource "azurerm_management_lock" "asbn_queue_lock" {
  for_each =  azurerm_servicebus_queue.asbn_queue_resource
  name       = "${each.key}-lock"
  scope      = each.value.id
  lock_level = "CanNotDelete"
}