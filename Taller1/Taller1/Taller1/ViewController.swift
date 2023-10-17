//
//  ViewController.swift
//  Taller1
//
//  Created by Andres Chango on 17/10/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var contentView: UIView!{
        didSet {
            contentView.backgroundColor = .gray
        }
    }

    @IBOutlet weak var infoView: UIView! {
        didSet {
            infoView.layer.cornerRadius = 10
        }
    }


    @IBOutlet weak var qrImageView: UIImageView!{
        didSet {
            qrImageView.layer.cornerRadius = 50
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

