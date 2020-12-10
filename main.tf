locals {
  default_tags = {
    responsible = "Thorsten Hans"
    kind        = "Webinar Resources"
  }

  all_tags = merge(local.default_tags, var.custom_tags)
}
resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-webinar-dec-2020-${terraform.workspace}"
  location = var.location
  tags     = local.all_tags
}

resource "azurerm_application_insights" "ai" {
  name                = "ai-webapp-${terraform.workspace}"
  application_type    = "web"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  tags                = local.all_tags
}
