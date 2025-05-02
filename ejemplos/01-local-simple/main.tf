provider "local" {
  # Configuración del proveedor local
}

provider "random" {
  # Configuración del proveedor random
}

variable "contenido" {
  type    = string
  default = "Hola Mundo2"
}

resource "random_string" "random" {
  length  = 4
  special = false
  numeric = true
  upper   = false
}

resource "local_file" "demo1" {
  content  = var.contenido
  filename = "product-${random_string.random.id}.txt"
}

resource "local_file" "demo2" {
  content  = var.contenido
  filename = "product2-${random_string.random.id}.txt"
}

output "nombre_archivo_demo2" {
  value = local_file.demo2.filename
}

output "nombre_archivo_demo1" {
  value = local_file.demo1.filename
}
