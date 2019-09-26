provider "google" {
  project = "vm-test-204406"
  region  = "us-central1"
}

resource "google_compute_firewall" "webserverfirewall" {
    name      = "webserverfirewall-instance"
    network   = "default"
    direction = "INGRESS"

    source_ranges = ["0.0.0.0/0"]
    allow {
      protocol = "tcp"
      ports    = ["${var.server_port}"]
    }
}

resource "google_compute_instance" "webserver" {
    name          =  "webserver"
    machine_type  =  "${var.machinetype}"
    zone          = "us-central1-b"


    boot_disk {
      initialize_params {
        image  =  "debian-9-stretch-v20190916"
      }
    }

   network_interface {
     network  = "default"

     access_config {
      #public_ip
     }
   }

  metadata_startup_script  =  "sudo apt-get update && sudo apt-get install apache2 -y; echo 'hello, you are welcomed to terraform instance!!!' > /var/www/html/index.html;"

}
