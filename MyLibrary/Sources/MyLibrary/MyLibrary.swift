public struct MyLibrary {
    
     public init() {
    }
    public func suma(op1: Double, op2: Double) -> Double {
        return op1 + op2

    }
    public func resta(op1: Double, op2: Double) -> Double {
        return op1 - op2

    }
    public func multiplicacion(op1: Double, op2: Double) -> Double {
        return op2 * op1

    }
    public func division(op1: Double, op2: Double) -> Double {
        return op1/op2
    }
    public func calculate (op1: Double, op2: Double, operation: MyOperations) {
        print("El resultado de la operación es : \(operation(op1, op2))")

    }

    public func calculateType (op1: Double, op2: Double, operation: MyOperationsEmun) {
        let cal = MyOperationsClosure()
        guard let result = cal.operations[operation] else { return  }
        print("El resultado de la operación es : \(result(op1,op2))")
        

    }

}
