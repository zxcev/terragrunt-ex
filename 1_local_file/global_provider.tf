terraform {
  required_version = "~> 1.9"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.1"
    }
  }
}

provider "local" {

}
