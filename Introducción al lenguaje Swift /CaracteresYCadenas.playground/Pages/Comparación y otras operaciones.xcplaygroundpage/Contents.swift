import Foundation

// Comparación
let name1 = "Pedro"
let name2 = "Juan"
let name3 = "Pedro"

// No son iguales
name1 == name2

// Son iguales
name1 == name3

// Contenido
let myContent = "Mi nombre es Brais"

myContent.contains(name1)

// Vacía
let myEmptyString = ""

myEmptyString == ""
myEmptyString.isEmpty

// Recorrido
for valor in myContent {
    print(valor)
}

