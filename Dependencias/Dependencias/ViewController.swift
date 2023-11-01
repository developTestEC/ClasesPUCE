//
//  ViewController.swift
//  Dependencias
//
//  Created by Andres Chango on 1/11/23.
//

import UIKit
import HelloPuce
import MyLibrary

class ViewController: UIViewController {
    let helloPUCE = HelloPuce(saludo: "Buen día")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        helloPUCE.saludar()
            

    }


    @IBAction func show(_ sender: Any) {
       print("Calculadora")
        let op1: Double = 5;
        let op2: Double = 7;
        let calculadora = MyLibrary()
        print(calculadora.suma(op1: op1, op2: op2))
        print(calculadora.resta(op1: op1, op2: op2))
        print(calculadora.multiplicacion(op1: op1, op2: op2))
        print(calculadora.division(op1: op1, op2: op2))
        let sumatoria = {(op1:Double, op2: Double) -> Double in
            return op1+op2
        }
        calculadora.calculate(op1: op1, op2: op2, operation: sumatoria )
        calculadora.calculateType(op1: op1, op2: op2, operation: .division)
    }


}

