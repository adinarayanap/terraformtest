#Terraform
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    }
  }
}

provider "google" {
  project = "testadi-459816"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
<<<<<<< HEAD
}
=======
  #added the new line
}
>>>>>>> abf0466a1c4b6d2fa72e79e1e813db7d2545c59c
