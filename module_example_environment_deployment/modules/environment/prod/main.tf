module "vpc-prod" {
  source = "../../virtualcloud"
  environment = "prod"
  region      = "europe-west1"
  zones       = ["us-central1-1", "us-central1-b", "us-central1-c"]
  ipv4_range  = "172.16.3.0/24"
}

