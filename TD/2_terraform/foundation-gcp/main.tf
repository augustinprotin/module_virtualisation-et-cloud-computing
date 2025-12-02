terraform {
    required_providers {
        google = {
        	source  = "hashicorp/google"
        	version = "~> 5.0"
        }
    }
}

provider "google" {
    project = "id-projet-gcp"
    region  = "europe-west9"
    zone    = "europe-west9-a"
}

resource "google_compute_network" "mon_vpc" {
    project                 = "my-project-name"
    name                    = "mon-vpc-terraform"
    auto_create_subnetworks = true
    description             = "VPC initialisé !"
    mtu                     = 1460
}
