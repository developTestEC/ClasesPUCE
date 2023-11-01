//
//  File.swift
//  
//
//  Created by Andres Chango on 1/11/23.
//

import Foundation

public typealias MyOperations = (Double, Double) -> Double

public enum MyOperationsEmun {
    case suma, resta, multiplicacion, division
}

struct MyOperationsClosure {
    let operations : [MyOperationsEmun: MyOperations]  = [MyOperationsEmun.suma : {(op1:Double, op2: Double) -> Double in
        return op1+op2
    }, MyOperationsEmun.resta : {(op1:Double, op2: Double) -> Double in
        return op1-op2
    }, MyOperationsEmun.multiplicacion : {(op1:Double, op2: Double) -> Double in
        return op1*op2
    }, MyOperationsEmun.division : {(op1:Double, op2: Double) -> Double in
        return op1/op2
    }]

}


