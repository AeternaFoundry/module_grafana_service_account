resource "grafana_service_account" "service_accounts" {
  for_each = var.service_accounts

  name        = each.value.name
  role        = each.value.role
  is_disabled = each.value.is_disabled
  org_id      = each.value.org_id
}

