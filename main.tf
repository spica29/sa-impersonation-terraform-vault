# resource "google_app_engine_application" "app" {
#   project     = var.project_id
#   location_id = "europe-west"
# }

resource "google_storage_bucket_object" "file1" {
  name    = "file1"
  bucket  = "${var.project_id}.appspot.com"
  content = "empty"
}
