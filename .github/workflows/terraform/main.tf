provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "data_bucket" {
  name          = var.bucket_name
  location      = var.location
  storage_class = var.storage_class

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30
    }
  }

  labels = {
    environment = var.environment
    owner       = var.owner
  }
}
