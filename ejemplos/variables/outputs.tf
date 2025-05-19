# Debido a que los output se muestran por orden alfabetico se eligio un prefijo numérico
output "_0000_Valores-primitivos" {
  description = "separacion"
  value       = "============================="
}
output "_0001_locals-string" {
  description = "Valor de string"
  value       = local.string
}
output "_0002_locals-numero-entero" {
  description = "Valor numerico entero"
  value       = local.numero_entero
}
output "_0003_locals-numero-decimal" {
  description = "Valor numerico decimal"
  value       = local.numero-decimal
}
output "_0004_locals-booleano" {
  description = "Valor de un booleano true"
  value       = local.booleano
}

output "_0100_Valores-complejos" {
  description = "separacion"
  value       = "============================="
}
output "_0101_locals-tupla" {
  description = "Valor de tupla"
  value       = local.lista_tupla
}
output "_0102_locals-tupla-primer-elemento" {
  description = "Valor de string"
  value       = local.lista_tupla[0]
}
output "_0103_locals-tupla-segundo-elemento" {
  description = "Valor de string"
  value       = local.lista_tupla[1]
}
output "_0104_locals-lista" {
  description = "Valor numerico entero"
  value       = local.lista_numeros
}
output "_0105_locals-lista-primer-elemento" {
  description = "Valor numerico entero"
  value       = local.lista_numeros[0]
}
output "_0106_locals-lista-segundo-elemento" {
  description = "Valor numerico entero"
  value       = local.lista_numeros[1]
}
output "_0107_locals-lista_set" {
  description = "Valor numerico decimal"
  value       = local.lista_set
}
# No podemos llamar al índice debido a que set es una lista no ordenada
# output "_0103_locals-lista_set-fallará" {
#   description = "Valor numerico decimal"
#   value       = local.lista_set[0]
# }
output "_0108_locals-mi_mapa" {
  description = "Valor de un booleano true"
  value       = local.mi_mapa
}
# Como trabajamos con un map, ya no podemos llamar por el índice y solo lo hacemos por la key
# output "_0104_locals-mi_mapa-fallará" {
#   description = "Valor de un booleano true"
#   value       = local.mi_mapa[0]
# }
output "_0109_locals-mi_mapa-key1" {
  description = "Valor de un booleano true"
  value       = local.mi_mapa["key1"]
}
output "_0110_locals-mi_objeto" {
  description = "Valor de un booleano true"
  value       = local.mi_objeto
}
output "_0111_locals-mi_objeto-isalive" {
  description = "Valor de un booleano true"
  value       = local.mi_objeto["alive"]
}
# Podemos llamar al índice luego de usar la key debido a que el value es una lista
output "_0112_locals-mi_objeto-primer-hijo" {
  description = "Valor de un booleano true"
  value       = local.mi_objeto["hijos"][0]
}




output "_0200_variables-Valores-primitivos" {
  description = "separacion"
  value       = "============================="
}

output "_0201_variables-string" {
  value       = var.string
  description = "Valor de la variable string"
}

output "_0202_variables-numero_entero" {
  value       = var.numero_entero
  description = "Valor de la variable numero_entero"
}

output "_0203_variables-numero_decimal" {
  value       = var.numero-decimal
  description = "Valor de la variable numero_decimal"
}

output "_0204_variables-booleano" {
  value       = var.booleano
  description = "Valor de la variable booleano"
}

output "_0205_variables-Valores-complejos" {
  description = "separacion"
  value       = "============================="
}

output "_0206_variables-lista_tupla" {
  value       = var.lista_tupla
  description = "Valor de la variable lista_tupla"
}

output "_0207_variables-lista_tupla-primer-elemento" {
  value       = var.lista_tupla[0]
  description = "Valor de la variable lista_tupla"
}

output "_0208_variables-lista_numeros" {
  value       = var.lista_numeros
  description = "Valor de la variable lista_numeros"
}

output "_0209_variables-lista_numeros-primer-elemento" {
  value       = var.lista_numeros[0]
  description = "Valor de la variable lista_numeros"
}

output "_0210_variables-lista_set" {
  value       = var.lista_set
  description = "Valor de la variable lista_set"
}
# Al igual que ocurre con set en locals, al ser un tipo de dato desordenado no podemos invocar algún índice
# output "_0208_variables-lista_set" {
#   value       = var.lista_set
#   description = "Valor de la variable lista_set"
# }

output "_0211_variables-mi_mapa" {
  value       = var.mi_mapa
  description = "Valor del mapa mi_mapa"
}
output "_0211_variables-mi_mapa-primer-elemento" {
  value       = var.mi_mapa["key1"]
  description = "Valor del mapa mi_mapa"
}
output "_0212_variables-mi_objeto" {
  value       = var.mi_objeto
  description = "Valor del objeto mi_objeto"
}

output "_0213_variables-mi_objeto-isalive" {
  value       = var.mi_objeto["alive"]
  description = "Valor del objeto mi_objeto"
}
# Al igual que en locals podemos llamar índice del valor de una key del tipo list
output "_0214_variables-mi_objeto-primer-hijo" {
  value       = var.mi_objeto["hijos"][0]
  description = "Valor del objeto mi_objeto"
}