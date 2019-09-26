module "vpc-dev" {
  source = "../../virtualcloud"
  environment = "dev"
  region      = "us-central1"
  zones       = ["us-central1-1", "us-central1-b"]
  ipv4_range  = "172.16.1.0/24"
}
