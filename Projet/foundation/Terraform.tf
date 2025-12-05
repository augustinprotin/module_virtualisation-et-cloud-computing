terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = ">= 2.13.0"
    }
  }
  required_version = ">= 0.13"
}

provider "scaleway" {
  region = "fr-par"
  zone   = "fr-par-1"
}