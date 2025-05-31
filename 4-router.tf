# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "iowarouter" {
  name    = "iowarouter"
  region  = "us-central1"
  network = google_compute_network.my-vpc.id
}

resource "google_compute_router" "osakarouter" {
  name    = "osakarouter"
  region  = "asia-northeast2"
  network = google_compute_network.my-vpc.id
}
