output "project_package_dependency_proxies_id" {
  description = "Map of id values across all project_package_dependency_proxies, keyed the same as var.project_package_dependency_proxies except keys with no id are omitted"
  value       = { for k, v in gitlab_project_package_dependency_proxy.project_package_dependency_proxies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_package_dependency_proxies_enabled" {
  description = "Map of enabled values across all project_package_dependency_proxies, keyed the same as var.project_package_dependency_proxies except keys with no enabled are omitted"
  value       = { for k, v in gitlab_project_package_dependency_proxy.project_package_dependency_proxies : k => v.enabled if v.enabled != null }
}
output "project_package_dependency_proxies_maven_external_registry_password" {
  description = "Map of maven_external_registry_password values across all project_package_dependency_proxies, keyed the same as var.project_package_dependency_proxies except keys with no maven_external_registry_password are omitted"
  value       = { for k, v in gitlab_project_package_dependency_proxy.project_package_dependency_proxies : k => v.maven_external_registry_password if v.maven_external_registry_password != null && length(v.maven_external_registry_password) > 0 }
  sensitive   = true
}
output "project_package_dependency_proxies_maven_external_registry_url" {
  description = "Map of maven_external_registry_url values across all project_package_dependency_proxies, keyed the same as var.project_package_dependency_proxies except keys with no maven_external_registry_url are omitted"
  value       = { for k, v in gitlab_project_package_dependency_proxy.project_package_dependency_proxies : k => v.maven_external_registry_url if v.maven_external_registry_url != null && length(v.maven_external_registry_url) > 0 }
}
output "project_package_dependency_proxies_maven_external_registry_username" {
  description = "Map of maven_external_registry_username values across all project_package_dependency_proxies, keyed the same as var.project_package_dependency_proxies except keys with no maven_external_registry_username are omitted"
  value       = { for k, v in gitlab_project_package_dependency_proxy.project_package_dependency_proxies : k => v.maven_external_registry_username if v.maven_external_registry_username != null && length(v.maven_external_registry_username) > 0 }
}
output "project_package_dependency_proxies_project" {
  description = "Map of project values across all project_package_dependency_proxies, keyed the same as var.project_package_dependency_proxies except keys with no project are omitted"
  value       = { for k, v in gitlab_project_package_dependency_proxy.project_package_dependency_proxies : k => v.project if v.project != null && length(v.project) > 0 }
}

