//
//  ViewController.swift
//  Delegate
//
//  Created by Andres Chango on 6/12/23.
//

import UIKit
protocol AddPersonProtocol {
    func addPerson( name : String)
}

class ViewController: UIViewController {
    var personList : [String] = ["Primero"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetailViewController {
            vc.delegate = self
        }
    }


    @IBAction func goToAddPerson(_ sender: Any) {
        performSegue(withIdentifier: "addPerson", sender: nil)
    }

}
extension ViewController : AddPersonProtocol {
    func addPerson(name: String) {
        self.personList.append(name)
        print(personList)
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }


}
extension ViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.personList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")

                if( !(cell != nil))
                {
                    cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
                }

        cell!.textLabel?.text = self.personList[indexPath.row]
                return cell!

    }




}

