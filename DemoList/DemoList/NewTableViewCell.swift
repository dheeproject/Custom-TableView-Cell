//
//  NewTableViewCell.swift
//  DemoList
//
//  Created by unthinkable-mac-0040 on 29/09/22.
//

import UIKit

class NewTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var buttonTitle: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        nameLabel.layer.borderColor = UIColor.black.cgColor
        nameLabel.layer.borderWidth = 1.0
        emailLabel.layer.borderColor = UIColor.black.cgColor
        emailLabel.layer.borderWidth = 1.0
        buttonTitle.layer.borderWidth = 1
        buttonTitle.layer.borderColor = UIColor.black.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
