variable "service_accounts" {
  description = <<EOT
Map of service_accounts, attributes below
Required:
    - name
    - role
Optional:
    - is_disabled
    - org_id
EOT

  type = map(object({
    name        = string
    role        = string
    is_disabled = optional(bool)
    org_id      = optional(string)
  }))
}

