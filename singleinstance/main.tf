#configuring google provider
provider "google" {
  project = "vm-test-204406"
  region  = "us-central1" 
}

resource "google_compute_firewall" "webserverfirewall" { 
   #name of the firewall. Should be unique for a network
   name     =   "webserverfirewall-instance"
   #name of the VPC network
   network  =   "default"
   
   #definition of direction of traffic ingress/egress (default is ingress) and  protocol & port
   direction  = "INGRESS"
   source_ranges = ["0.0.0.0/0"]
   allow {
     protocol = "tcp"
     ports    = ["80", "8080"] 
   }
   



}
resource "google_compute_instance" "webserver" {
  name         = "webserver"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  
  boot_disk {
    initialize_params {
      image = "debian-9-stretch-v20190916"
    }
  }
  
  network_interface {
    network  = "default"

    access_config {
    #ephemeral IPs for internet access 
    }    
  }
  
  tags = ["webserver-tomcat"]
  metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y; echo 'hello, you are welcomed to terraform instance!!!' > /var/www/html/index.html;"
}

output "public_ip" {
  value = "${google_compute_instance.webserver.network_interface.0.access_config.0.nat_ip}" 
}
