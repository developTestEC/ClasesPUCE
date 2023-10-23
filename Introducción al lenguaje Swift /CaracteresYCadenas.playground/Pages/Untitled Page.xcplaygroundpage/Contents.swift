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
