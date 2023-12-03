//
//  ViewController.swift
//  ShapeDependency
//
//  Created by Andres Chango on 23/11/23.
//

import UIKit
import Shapes
import Figlet
typealias ShapeOperator = (Double,Double?) -> String
class ViewController: UIViewController {
    var shapeSelected = String()
    var shapeAreaResult = ""
    let calculator = GeometricAreaCalculator()
    var square : ShapeOperator = { side, _  in
        let calculator = GeometricAreaCalculator()
        let value =  calculator.areaCalculator(shape: .square(side: side))
        return value.1
    }
    var circle :ShapeOperator = { radius, _ in
        let calculator = GeometricAreaCalculator()
        let value =  calculator.areaCalculator(shape: .circle(radius: radius))
        return value.1
    }
    var rectangle :ShapeOperator = { width, height in
        let calculator = GeometricAreaCalculator()
        let value =  calculator.areaCalculator(shape: .rectangle(weight: width, height: height ?? 0))
        return value.1
    }
    let shapes = ["Cuadrado","Rectangulo","Circulo","Rombo"]


    @IBOutlet weak var shapeImage: UIImageView!

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var shapesSelector: UITextField!
    private var shapePicker: UIPickerView! = UIPickerView()
    @IBOutlet weak var firstParameterLabel: UILabel!
    @IBOutlet weak var secondParameterLabel: UILabel!
    @IBOutlet weak var firstParameterTextField: UITextField!
    @IBOutlet weak var secondParameterTextField: UITextField!

    @IBOutlet weak var contentView: UIView! {
        didSet {
            contentView.layer.cornerRadius = 20
        }
    }

    @IBOutlet weak var continueButton: UIButton!{
        didSet {
            continueButton.layer.cornerRadius = 10.0
            continueButton.isEnabled = false
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        shapePicker.delegate = self
        shapePicker.dataSource = self
        self.shapesSelector.inputView = shapePicker
        firstParameterTextField.delegate = self
        secondParameterTextField.delegate = self
        self.hideKeyboardWhenTappedAround() 

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setUpUI()

    }
    func setUpUI () {

        firstParameterLabel.isHidden = true
        firstParameterTextField.isHidden = true
        secondParameterLabel.isHidden = true
        secondParameterTextField.isHidden = true
    }



    @IBAction func calculateAction(_ sender: Any) {
        self.calculateShape(shape: self.shapeSelected)
        firstParameterTextField.text = ""
        secondParameterTextField.text = ""
        self.performSegue(withIdentifier: "showResult", sender: nil)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? ResultViewController {
            target.result = self.shapeAreaResult
        }
    }
    func configureViewWith(shape : String) {
        switch shape {
        case  "Cuadrado" :
            showSquare()
            break
        case  "Rectangulo":
            showRectangle()
            break
        case  "Circulo":
            showCircle()
            break
        default :
            print("No se encontro Figura")
        }
    }
    func calculateShape(shape : String) {
       let param1 = Double(firstParameterTextField.text ?? "0") ?? 0
       let param2 = Double(secondParameterTextField.text ?? "0") ?? 0
        var result = ""
        switch shape {
        case  "Cuadrado" :
            result = self.calculator.areaCalculator(shape: .square(side: param1)).1
            break
        case  "Rectangulo":
            result = self.calculator.areaCalculator(shape: .rectangle(weight: param1, height: param2)).1
            break
        case  "Circulo":
            result = self.calculator.areaCalculator(shape: .circle(radius: param1)).1
            break
        default :
            print("No se encontro Figura")
        }
        shapeAreaResult = result
        resultLabel.text = result
    }

    func showSquare(){
        firstParameterLabel.isHidden = false
        firstParameterTextField.isHidden = false
        secondParameterLabel.isHidden = true
        secondParameterTextField.isHidden = true
        firstParameterLabel.text = "Ingrese Lado"
        shapeImage.image = UIImage(named: "cuadrado")
        shapeImage.contentMode = .scaleAspectFit
        continueButton.isEnabled = true

    }
    func showRectangle(){
        firstParameterLabel.isHidden = false
        firstParameterTextField.isHidden = false
        secondParameterLabel.isHidden = false
        secondParameterTextField.isHidden = false
        secondParameterLabel.text = "Ingrese Ancho"
        firstParameterLabel.text = "Ingrese Largo"
        shapeImage.image = UIImage(named: "rectangulo")
        shapeImage.contentMode = .scaleAspectFit
        continueButton.isEnabled = true
    }
    func showCircle(){
        firstParameterLabel.isHidden = false
        firstParameterTextField.isHidden = false
        secondParameterLabel.isHidden = true
        secondParameterTextField.isHidden = true
        firstParameterLabel.text = "Ingrese Radio"
        shapeImage.image = UIImage(named: "circulo")
        shapeImage.contentMode = .scaleAspectFit
        continueButton.isEnabled = true
    }
}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return shapes.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return shapes[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        shapesSelector.text = shapes[row]
        self.configureViewWith(shape : shapes[row])
        self.shapeSelected = shapes[row]
        shapesSelector.resignFirstResponder()
    }
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        let aSet = NSCharacterSet(charactersIn:"0123456789").inverted
        let compSepByCharInSet = string.components(separatedBy: aSet)
        let numberFiltered = compSepByCharInSet.joined(separator: "")
        return string == numberFiltered
    }
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
