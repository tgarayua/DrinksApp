//
//  DrinksTVC.swift
//  DrinksApp
//
//  Created by Thomas Garayua on 1/25/22.
//

import UIKit

class DrinksTVC: UITableViewCell {

    @IBOutlet weak var drinkView: UIView!
    @IBOutlet weak var DrinkImgView: UIImageView!
    @IBOutlet weak var drinkLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
