provider "azurerm" {
  features {}
}

# State Backends
terraform {
  backend "azurerm" {
    resource_group_name  = "dev-thh"
    storage_account_name = "webitfdec"
    container_name       = "tfwebinar"
    key                  = "webinar.tfstate"
    environment          = "public"
    # export ARM_ACCESS_KEY=MY_KEYDFGSFDS

  }
}
