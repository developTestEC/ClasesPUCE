func suma(op1: Double , op2: Double) -> Double {
    return op1 + op2
}
var sumatoria = {(op1:Double, op2: Double) -> Double in
    return op1+op2
}
func resta(op1: Double , op2: Double) -> Double {
    return op1 - op2
}

func multiplicacion(op1: Double , op2: Double) -> Double {
    return op1 * op2
}

func division(op1: Double , op2: Double) -> Double {
    return op1 / op2
}
var resultado = sumatoria(4, 5)
print(suma(op1: 2, op2: 2))
print(resta(op1: 2, op2: 2))
print(multiplicacion(op1: 2, op2: 2))
print(division(op1: 2, op2: 2))


// Closures

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
//reversedNames = names.sorted(by: { $0 > $1 } )

var saludo = {(saludo: String)->() in
    print(saludo)}
saludo("hola mundo")

typealias Operaciones = (Double,Double)-> Double
func calculadora (value1: Double, value2: Double , operation: Operaciones )-> Double {
    let resultado = operation(value1, value2)
    print("El resultado es : \(resultado)")
    return resultado
}

var resultCalculadora = calculadora(value1: 5, value2: 5, operation: sumatoria)

//Enumeraciones

enum MessageStatus {
    case sent
    case received
    case read
}

//

enum Status {
    case sent(message: String)
    case received(message: String)
    case read
}

let status = Status.received(message: "Hola mundo")

enum CompassPoint {
    case north, south, east, west
}


//raw values
enum MessageEncoded: String {
    case keyOne = "12345678"
    case keyTwo = "qwerty"
}

let messageEncoded = MessageEncoded.keyOne.rawValue
messageEncoded


enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

func printNumberOfPlanet (_ planet : Planet){
    print("El planeta \(planet ) es el \(planet.rawValue) planeta del sitema solar")
}
printNumberOfPlanet(Planet.neptune)



