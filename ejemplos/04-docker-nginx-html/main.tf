terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "docker" {}
provider "local" {}

data "local_file" "index_html" {
  filename = "${path.module}/index.html"
}

resource "docker_container" "nginx" {
  name  = "nginx-terraform"
  image = "nginx:alpine"
  
  ports {
    internal = 80
    external = 8080
  }
  
  upload {
    file    = "/usr/share/nginx/html/index.html"
    content = data.local_file.index_html.content
  }
}

