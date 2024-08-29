terraform {
  backend "azurerm" {
    resource_group_name  = "rg.tfstate"
    storage_account_name = "saangotfstate"
    container_name       = "aztest-tfstate"
    key                  = "aztest.terraform.tfstate"
  }
}