# use local docker as provider
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.18.0"
    }
  }
}
provider "docker" {
  # version = "~> 2.18.0"
  host = "unix:///var/run/docker.sock"
}
