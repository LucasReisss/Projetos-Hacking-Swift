//
//  FlagTableViewCell.swift
//  Challenge 03 - flags
//
//  Created by Lucas da Silva Reis on 21/02/23.
//

import UIKit

class FlagTableViewCell: UITableViewCell {

    @IBOutlet var imageViewCell: UIImageView!
    @IBOutlet var labelView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
