//
//  DetailViewController.swift
//  Delegate
//
//  Created by Andres Chango on 6/12/23.
//

import Foundation
import UIKit

class DetailViewController: UIViewController{
    var delegate : AddPersonProtocol?
    
    @IBOutlet weak var nameTextField: UITextField!

    @IBAction func addPerson(_ sender: Any) {
        delegate?.addPerson(name: nameTextField.text ?? "")
        self.dismiss(animated: true)
    }

}
