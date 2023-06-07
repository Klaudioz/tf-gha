terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.68.0"
    }
  }
}

provider "google" {
  project = "tf-gcp-gha"
  region  = "us-central1"
  zone    = "us-central1-c"
}