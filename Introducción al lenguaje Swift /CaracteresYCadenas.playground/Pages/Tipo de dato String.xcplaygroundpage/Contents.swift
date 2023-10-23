import Foundation

// Variables
let myName = "Mi nombre es:"
var currentLoginAttempt = 0
currentLoginAttempt = 2
print(myName)
print(currentLoginAttempt)

// Type Annotation
var welcomeMessage: String = "Bienvenidos"
var counter: Int = 0
//Data Types
//Int
let myInteger = 1
print(myInteger)
//Booleans
let isEmpty: Bool = true
print(isEmpty)
//Float
let latitude: Float
latitude = 36.166667
//Double
let longitude: Double = -1286.78333
//
var char: Character = "1"
print(char)

// String en una línea
let myString = "Bienvenidos al curso de Swift"

// String en varias líneas
let myMultipleString = """
Bienvenidos al curso de Swift

Espero que les parezcan interesantes los String
"""

// String en varias líneas únicamente en código
let myFalseMultipleString = """
Bienvenidos al curso de Swift\
\
Espero que os parezcan interesantes los String
"""
let sparklingHeart = "\u{1F496}"

// String vacío
let myEmptyString = ""
let myEmptyString2 = String()

print(myMultipleString)

//Operadores
//Aritmeticos
//Asignación
//comparacion
//logicos
//bit a bit
//otros operadores

// program to check pass or fail
let marks = 60

// use of ternary operator
let result = (marks >= 40) ? "pass" : "fail"

print("You " + result + " the exam")
//Estructuras

// define a structure
struct Person {

// define two properties
 var name = ""
 var age = 0
}

// create instance of Person
var person1 = Person()

// access properties and assign new values
person1.age = 21
person1.name = "Rick"

print("Name: \(person1.name) and Age: \( person1.age) ")

var person2 = person1
person2.name = "Juan"

print("Name: \(person2.name) and Age: \( person2.age) ")



//Clases

class BankAccount {
    var owner = ""
    var number = ""
}

var bank1 = BankAccount()
var bank2 = bank1

bank1.owner = "Pedro"
print(bank1.owner)
bank2.owner = "Andrés"
print(bank1.owner)

