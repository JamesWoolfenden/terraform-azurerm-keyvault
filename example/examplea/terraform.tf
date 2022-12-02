terraform {
  required_providers {
    azurerm = {
      version = "3.34.0"
      source  = "hashicorp/azurerm"
    }
    random = {
      version = "3.4.3"
      source  = "hashicorp/random"
    }
  }
  required_version = ">= 1.3.0"
}
