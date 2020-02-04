provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version         = "~> 1.42"
  client_id       = var.clientId
  subscription_id = var.subscriptionId
  tenant_id       = var.tenantId
  client_secret   = var.clientSecret
}

resource "azurerm_resource_group" "rg" {
  name     = var.resourceGroupName
  location = var.location
}

resource "azurerm_app_service_plan" "app_plan" {
  name                = var.appServicePlanName
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "app_service" {
  name                = var.appServiceName
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.app_plan.id
  

  app_settings = {
    "SOME_KEY" = "some-value"
  }
}