variable "string" {
  type        = string
  description = "Cadena de texto"
  default     = "STRING"
}

variable "numero_entero" {
  type        = number
  description = "Número entero"
  default     = 1
}

variable "numero-decimal" {
  type        = number
  description = "Número decimal"
  default     = 1.2
}

variable "booleano" {
  type        = bool
  description = "Valor booleano"
  default     = true
}
# A diferencia de locals.tf, debemos declara explicitamente de que tipo es nuestro default,
#es por eso que debemos utilizar list(),set, map y object
# En locals no es necesario ya que terraform infiere cual es el tipo.
# Lo que no impide que se pueda hacer
variable "lista_tupla" {
  type        = list(any)
  description = "Lista con distintos tipos de datos"
  default     = ["String", 2, true]
}

variable "lista_numeros" {
  type        = list(number)
  description = "Lista de números"
  default     = [1, 2, 3, 4, 5]
}

variable "lista_set" {
  type        = set(number)
  description = "Set de números (sin duplicados)"
  default     = [1, 2, 3, 4, 5]
}

variable "mi_mapa" {
  type        = map(string)
  description = "Mapa simple de claves y valores string"
  default = {
    key1 = "valor de key1"
    key2 = "valor de key2"
  }
}

variable "mi_objeto" {
  type = object({
    key    = number
    nombre = string
    hijos  = list(string)
    alive  = bool
  })
  description = "Objeto con distintas propiedades tipadas"
  default = {
    key    = 1
    nombre = "Ana"
    hijos  = ["Alberto", "Antonio", "Andrea"]
    alive  = true
  }
}
