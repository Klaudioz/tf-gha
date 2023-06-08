terraform {
    backend "gcs" { 
      bucket  = "tf-gcp-gha2-bucket"
      prefix  = terraform.workspace
    }
}