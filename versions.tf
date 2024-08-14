terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.40.0"
    }
  }

  required_version = "~> 1.9"
}

provider "google" {
  region  = "europe-north1"
  zone    = "europe-north1-b"
  project = terraform.workspace
}
