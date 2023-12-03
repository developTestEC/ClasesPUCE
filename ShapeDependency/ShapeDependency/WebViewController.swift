//
//  WebViewController.swift
//  ShapeDependency
//
//  Created by Andres Chango on 3/12/23.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
//            let myURL = URL(string:"https://www.apple.com")
//                    let myRequest = URLRequest(url: myURL!)
//            self.webView.load(myRequest)
        }


        // Do any additional setup after loading the view.
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
