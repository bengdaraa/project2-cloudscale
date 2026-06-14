terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "tfstate4909" # REPLACE WITH LAB 8 STORAGE ACCOUNT NAME
    container_name       = "tfstate"
    key                  = "project2.tfstate"
  }
}
provider "azurerm" {
  features {}
}
