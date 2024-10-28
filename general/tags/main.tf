locals {
  cmdb_tags = merge(
    {
      Project             = var.project
      Environment         = var.environment
      ResponsibleTeam     = var.responsible_team
      CostCenter          = var.cost_center
      CreatedDate         = var.created_date != "" ? var.created_date : formatdate("YYYY-MM-DD", timestamp())
      LastModifiedDate    = formatdate("YYYY-MM-DD", timestamp())
      ComplianceStatus    = var.compliance_status
      BusinessCriticality = var.business_criticality
    },
    var.additional_tags
  )
}

output "tags" {
  description = "Mapa de tags CMDB padrão para recursos de inventário"
  value       = local.cmdb_tags
}
