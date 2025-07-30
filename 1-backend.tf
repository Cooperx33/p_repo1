# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "dank"
    prefix = "terraform/state"
    credentials = "coops-custom-class65-a9bfc7317d0d.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}