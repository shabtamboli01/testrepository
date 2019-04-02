# Configure the provider
provider "azurerm" {

    subscription_id = "939e27d9-0158-4664-94a7-e12525d451c1"
  client_id       = "6c35b286-0433-4367-b9bd-e05aa9b73d7b"
  client_secret   = "91cf2632-e93d-4607-ae59-25dbe18c1403"
  tenant_id       = "c160a942-c869-429f-8a96-f8c8296d57db"
}

# Create a new resource group
resource "azurerm_resource_group" "rg" {
    name     = "myTFResourceGroup"
    location = "eastus"
}
terraform {
  backend "remote" {
    organization = "MyFirtsTFOrganization"

    workspaces {
      name = "testworkspace1"
    }
  }
}