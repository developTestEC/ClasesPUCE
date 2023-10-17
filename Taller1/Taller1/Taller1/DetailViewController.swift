//
//  DetailViewController.swift
//  Taller1
//
//  Created by Andres Chango on 17/10/23.
//

import Foundation
import UIKit
class DetailViewController: UIViewController {

    @IBOutlet weak var closeButton: UIView!

    @IBAction func closeAction(_ sender: UIButton) {
        self.dismiss(animated: false)
    }
}
