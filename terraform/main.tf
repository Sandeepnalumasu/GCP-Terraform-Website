provider "google" {
  project = var.project
  region  = var.region
}

resource "google_storage_bucket" "static_site" {
  name     = var.bucket_name
  location = var.region
  website {
    main_page_suffix = "index.html"
    not_found_page   = "index.html"
  }
  force_destroy = true
}

resource "google_storage_bucket_object" "index" {
  name   = "index.html"
  bucket = google_storage_bucket.static_site.name
  source = "../index.html"
  content_type = "text/html"
}

resource "google_storage_bucket_object" "css" {
  name   = "styles.css"
  bucket = google_storage_bucket.static_site.name
  source = "../styles.css"
  content_type = "text/css"
}

resource "google_storage_bucket_object" "js" {
  name   = "script.js"
  bucket = google_storage_bucket.static_site.name
  source = "../script.js"
  content_type = "application/javascript"
}

resource "google_storage_bucket_iam_binding" "public_access" {
  bucket = google_storage_bucket.static_site.name
  role   = "roles/storage.objectViewer"
  members = [
    "allUsers",
  ]
}
