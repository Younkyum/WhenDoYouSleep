//
//  settingTableViewCell.swift
//  WhenDoYouSleep
//
//  Created by Jin younkyum on 2022/05/10.
//

import UIKit

class settingTableViewCell: UITableViewCell {
    @IBOutlet weak var num1: UIView!
    @IBOutlet weak var num2: UIView!
    @IBOutlet weak var num3: UIView!
    
    @IBOutlet weak var themeColor: UIView!
    @IBOutlet weak var checkImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
