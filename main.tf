terraform {
  required_version = ">= 1.1.0"

}
provider "google" {
  project = "terraform-gcp-366814"
  region  = "us-east-4"
  zone    = "us-east4-c"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "Ubuntu/Ubuntu 18.04 LTS"
    }
  }
}