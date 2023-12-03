//
//  ResultViewController.swift
//  ShapeDependency
//
//  Created by Andres Chango on 3/12/23.
//

import UIKit

class ResultViewController: UIViewController {
    var result = ""
    @IBOutlet weak var resultLabel : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        resultLabel.text = result

    }
    

    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
