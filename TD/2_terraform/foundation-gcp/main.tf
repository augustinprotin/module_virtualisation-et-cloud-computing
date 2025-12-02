provider "google" {
    project = "projet-de-fou"
    region  = "europe-west9"
}

resource "google_compute_network" "project-network" {
    name = "project-network"
}

resource "google_compute_instance" "project-vm" {
    name                 = "project-vm"
    machine_type            = "n2-standard-2"
    zone                    = "europe-west9-b"
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-13"
        }
    }
    network_interface {
        network = google_compute_network.project-network.self_link
        access_config {
        }
    }
}
