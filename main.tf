terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.18.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  subscription_id = "7038e7d6-24ae-41db-ad0b-232ae3bb4d22"
  tenant_id = "355a2210-56b1-497f-b910-a58caa68831b"
  client_id = "41849ebc-d499-437b-a96b-89baec0fcdf9"
  client_secret = "jWu8Q~NmazsYzCM4DQ3Mev6SRo68GOsblhxc~bMz"

  features {}
}
provider "azuread" {
  tenant_id       = "355a2210-56b1-497f-b910-a58caa68831b"
  client_id       = "41849ebc-d499-437b-a96b-89baec0fcdf9"
  client_secret   = "jWu8Q~NmazsYzCM4DQ3Mev6SRo68GOsblhxc~bMz"
}
# Define a resource group (optional, for organization)
resource "azurerm_resource_group" "rg" {
  name     = "TerraformRG"
  location = "East US"
}