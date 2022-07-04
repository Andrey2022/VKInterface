//
//  TopicTVCell.swift
//  VKInterFace
//
//  Created by user on 01/07/2022.
//

import UIKit

class TopicTVCell: UITableViewCell {
    
    @IBOutlet var FirstLabel: UILabel!
    @IBOutlet var SecondLabel: UILabel!
    @IBOutlet var ThirdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configurate(name: String, name2: String, name3: String) {
        
        FirstLabel?.text = name
        SecondLabel?.text = name2
        ThirdLabel?.text = name3
    }

}
