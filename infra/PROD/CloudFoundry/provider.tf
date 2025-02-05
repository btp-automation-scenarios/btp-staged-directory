terraform {
  required_providers {
    cloudfoundry = {
      source  = "cloudfoundry/cloudfoundry"
      version = "~>1.2.0"
    }
  }
  backend "azurerm" {
    use_oidc = true
  }
}

provider "cloudfoundry" {
  api_url = var.cf_api_url
}
