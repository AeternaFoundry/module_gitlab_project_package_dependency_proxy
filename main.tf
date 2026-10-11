resource "gitlab_project_package_dependency_proxy" "project_package_dependency_proxies" {
  for_each = var.project_package_dependency_proxies

  project                          = each.value.project
  enabled                          = each.value.enabled
  maven_external_registry_password = each.value.maven_external_registry_password
  maven_external_registry_url      = each.value.maven_external_registry_url
  maven_external_registry_username = each.value.maven_external_registry_username
}

