// Colecciones
//Array

var numeros = [1,2,3,4,5]
var numbers: [Int] = []
//agregar elementos
numbers.append(1)
numbers.append(2)
numbers.append(3)

//remover
numbers.remove(at: 0)


var subjects = ["Matemáticas", "Física", "Química", "Historia", "Lengua"]
subjects.remove(at: 2)
subjects.removeLast()
subjects.removeFirst()


// Set

var vocales = Set<Character>()
vocales.insert("a")
vocales.insert("e")
vocales.insert("i")
print(vocales)
//
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

let intersection = houseAnimals.intersection(farmAnimals)

/// Diccionarios

var namesOfIntegers: [Int: String] = [:]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

var airport = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

airports["LHR"] = "London"


/// Control Flow
///

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}


for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

///while
///
let finalSquare = 25
var square = 0
var diceRoll = 0
var board = [Int](repeating: 0, count: finalSquare + 1)
while square < finalSquare {
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square += board[square]
    }
}
print("Game over!")
/*
 repeat {

 } while <#condition#>
 */

var dice = [0,1,6,3,4,5,6]
var counter = 0
var value = 0
repeat {
    value = dice[counter]
    print("El valor es : \(dice[counter])")
    counter += 1
}while value != 6


//Switch
 let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}


