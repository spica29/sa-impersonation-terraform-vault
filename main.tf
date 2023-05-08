resource "google_app_engine_application" "app" {
  project     = "gothic-airlock-385818"
  location_id = "europe-west"
}

resource "google_storage_bucket_object" "dir1" {
  name    = "dir1"
  bucket  = "gothic-airlock-385818.appspot.com"
  content = "empty"
}
