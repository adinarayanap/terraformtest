# Configure the Google Cloud provider
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

# Configure the Google Cloud provider
provider "google" {
  project = "testadi-459816"
  region  = "us-central1"
}

# Create a Compute Engine VM instance
resource "google_compute_instance" "default" {
  name         = "my-vm"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  # Boot disk configuration
  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2210-kinetic-amd64-v20230126"
    }
  }

  # Network interface configuration
  network_interface {
    network = "default" # Use the default VPC network
    access_config {
      # Enable public access to the VM
    }
  }
}
