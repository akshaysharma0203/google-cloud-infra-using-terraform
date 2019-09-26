module "vpc-uat" {
  source = "../../virtualcloud"
  environment = "uat"
  region      = "us-central1"
  zones       = ["us-central1-1", "us-central1-b"]
  ipv4_range  = "172.16.2.0/24"
}

