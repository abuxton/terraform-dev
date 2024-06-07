terraform {
  cloud {
    organization = "abc-gke"

    workspaces {
      name = "test"
    }
  }
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

provider "random" {
  # Configuration options

}
resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}
output "random_string" {
  value = random_string.random.result
}
