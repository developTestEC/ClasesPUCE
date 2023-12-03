//
//  ShapesTableViewCell.swift
//  ShapeDependency
//
//  Created by Andres Chango on 3/12/23.
//

import UIKit

class ShapesTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageShape: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
