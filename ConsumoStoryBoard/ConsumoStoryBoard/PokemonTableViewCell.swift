//
//  PokemonTableViewCell.swift
//  ConsumoStoryBoard
//
//  Created by Andres Chango on 16/12/23.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
