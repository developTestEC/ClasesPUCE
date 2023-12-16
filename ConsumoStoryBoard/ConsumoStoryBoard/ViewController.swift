//
//  ViewController.swift
//  ConsumoStoryBoard
//
//  Created by Andres Chango on 16/12/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var loading: UIActivityIndicatorView!
    var pokemons : [PokemonDataModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self

        // Do any additional setup after loading the view.

        self.getPokemons()
    }

    func getPokemons() {
        self.loading.startAnimating()
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151")

        URLSession.shared.dataTask(with: url!) { data, response, error in
            if let _ = error {
                print("Error")
                DispatchQueue.main.async {
                    self.loading.isHidden = false
                    self.loading.stopAnimating()
                }

            }

            if let data = data,
               let httpResponse = response as? HTTPURLResponse,
               httpResponse.statusCode == 200 {
                let pokemonDataModel = try! JSONDecoder().decode(PokemonResponseDataModel.self, from: data)
                print("Pokemons \(pokemonDataModel)")
                DispatchQueue.main.async {
                    self.pokemons = pokemonDataModel.results
                    self.loading.stopAnimating()
                    self.loading.isHidden = true
                    self.tableView.reloadData()
                               }
            }

        }.resume()
    }


}


extension ViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pokemons.count
    }


       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


           guard let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonTableViewCell", for: indexPath) as? PokemonTableViewCell else {
               return UITableViewCell()
           }

           cell.nameLabel.text =  self.pokemons[indexPath.row].name
           return cell
    }

}
