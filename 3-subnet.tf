# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "private" {
  name                     = "private"
  ip_cidr_range            = "10.255.13.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.my-vpc.id
  private_ip_google_access = true
}