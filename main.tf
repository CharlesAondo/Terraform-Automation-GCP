  
provider "google" {
      credentials = file("Path to your json file that was created from service account")
      project = var.project_id
      region  = "us-central1"
      zone    = "us-central1-c"

}

#Creating an uptime check
resource "google_monitoring_uptime_check_config" "http" {
  display_name = "1 - Website uptime check [global]"
  timeout = "10s"
  period = "60s"
  http_check {
    path = "/"
    port = "80"
  }
  monitored_resource {
    type = "uptime_url"
    labels = {
      host = "host-ip"
    }
  }

}


# google_storage_bucket.my_bucket will be destroyed
 resource "google_storage_bucket" "default" {
       name = var.bucket_name
       project = var.project_id
       storage_class = var.storage_class
       location = var.bucket_loaction
       
  }

