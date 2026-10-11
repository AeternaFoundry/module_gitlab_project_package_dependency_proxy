variable "project_package_dependency_proxies" {
  description = <<EOT
Map of project_package_dependency_proxies, attributes below
Required:
    - project
Optional:
    - enabled
    - maven_external_registry_password
    - maven_external_registry_url
    - maven_external_registry_username
EOT

  type = map(object({
    project                          = string
    enabled                          = optional(bool)
    maven_external_registry_password = optional(string)
    maven_external_registry_url      = optional(string)
    maven_external_registry_username = optional(string)
  }))
}

