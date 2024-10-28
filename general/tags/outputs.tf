output "tags" {
  description = "Mapa de tags CMDB para todos os recursos"
  value       = local.cmdb_tags  # Verifique se `local.cmdb_tags` existe e contém as tags desejadas
}