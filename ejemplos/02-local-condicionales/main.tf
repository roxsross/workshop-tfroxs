provider "local" {
  # Configuration options
}

variable "files" {
  type = map(object({
    content = string
    create  = bool
  }))
  default = {
    "config1" = {
      content = "contenido 1"
      create  = true
    }
    "config2" = {
      content = "contenido 2"
      create  = true
    }
    "config3" = {
      content = "contenido 3"
      create  = true
    }
  }
}

resource "local_file" "configs" {
  for_each = {
    for name, file in var.files :
    name => file
    if file.create == true
  }

  content  = each.value.content
  filename = "${each.key}.txt"
}