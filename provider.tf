terraform {
  required_providers {
    scaleway = {
      source  = "scaleway/scaleway"
      version = "2.48.0"
    }
  }
}

provider "scaleway" {
  zone            = "fr-par-1"
  region          = "fr-par"
  project_id      = "2b40a887-f3bf-4b0e-ad3e-97fbefe8541c"
  organization_id = "223ee57e-66ff-4f84-9b47-fc3c86a21ad2"
}
