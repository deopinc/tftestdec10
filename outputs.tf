output "rg_name" {
  value = module.resource_group.name
}

output "rg_id" {
  value = module.resource_group.id
}

output "storage_name" {
  value = azurerm_storage_account.storageaccount.name
}