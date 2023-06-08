resource "google_storage_bucket" "auto-expire" {
  name          = "auto-expiring-bucket-test1"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}