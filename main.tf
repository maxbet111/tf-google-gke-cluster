module "gke_cluster" {
  source         = "github.com/maxbet111/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}

terraform {
  backend "gcs" {
    bucket  = "my-project-terraform-state1"
    prefix  = "terraform/state"
  }
}