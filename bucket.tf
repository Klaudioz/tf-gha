resource "google_storage_bucket" "auto-expire" {
  name          = "${var.environment}-auto-expiring-bucket-test"
  location      = var.location
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
