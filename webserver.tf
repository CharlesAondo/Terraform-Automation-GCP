resource "google_compute_instance" "my-web-server" {
      name         = "my-web-server"
      machine_type = "e2-medium"

      tags = ["tvms", "https"]

      boot_disk {
            initialize_params {
                  image = "debian-cloud/debian-9"
            }

      }

      network_interface {
            network = "default"

      }
 
  }
