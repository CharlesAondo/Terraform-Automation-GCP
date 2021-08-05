  
provider "google" {
      credentials = file("timeless-vet-international-134ca45b0efb.json")
      project = "timeless-vet-international"
      region  = "us-central1"
      zone    = "us-central1-c"

}
/**
resource "google_monitoring_group" "apache_parent" {
  display_name = "Apache"
  filter = "metadata.user_labels.app=has_substring(\"website\")"
}

resource "google_monitoring_group" "apache_prod_subgroup" {
  display_name = "prod"
  filter = "metadata.user_labels.env=\"prod\""
  parent_name =  "${google_monitoring_group.apache_parent.name}"
}


resource "google_monitoring_group" "apache_qa_subgroup" {
  display_name = "qa"
  filter = "metadata.user_labels.env=\"qa\""
  parent_name =  "${google_monitoring_group.apache_parent.name}"
}


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
      host = "10.128.0.12"
    }
  }

}
**/

# google_storage_bucket.my_bucket will be destroyed
 resource "google_storage_bucket" "default" {
       name = var.bucket_name
       project = var.project_id
       storage_class = var.storage_class
       location = var.bucket_loaction
       
  }

