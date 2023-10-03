resource "google_compute_resource_policy" "policy" {
  project = var.project_id
  name   = var.policy_name
  region = var.region
  snapshot_schedule_policy {
    schedule {
      daily_schedule {
        days_in_cycle = 1
        start_time    = "00:00"
      }
    }
    retention_policy {
      max_retention_days    = var.max_retention_days
      on_source_disk_delete = "KEEP_AUTO_SNAPSHOTS"
    }
  }
}
resource "google_compute_disk_resource_policy_attachment" "attachment" {
  project = var.project_id 
  name = google_compute_resource_policy.policy.name
  disk = var.disk_name
  zone = var.zone
}