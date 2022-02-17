//
//  CustomCell.swift
//  WarCardGame
//
//  Created by macbook on 16/02/22.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var fruitsView: UIView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var fruitsImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
