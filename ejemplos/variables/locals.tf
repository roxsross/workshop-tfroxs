locals {
  string         = "STRING"
  numero_entero  = 1
  numero-decimal = 1.2 # Se utiliza el "." y no ","
  booleano       = true
  lista_tupla    = ["String", 2, true]
  lista_numeros  = [1, 2, 3, 4, 5]
  lista_set      = toset([1, 2, 3, 4, 5])
  mi_mapa = {
    key1 = "valor de key1",
    key2 = "valor de key2"
  }
  mi_objeto = {
    key    = 1,
    nombre = "Ana",
    hijos  = ["Alberto", "Antonio", "Andrea"],
    alive  = true
  }
}


