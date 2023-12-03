//
//  ShapesViewController.swift
//  Taller2
//
//  Created by Andres Chango on 3/12/23.
//

import UIKit

class ShapesViewController: UIViewController {

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

        // Do any additional setup after loading the view.
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

