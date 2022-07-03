//
//  TableViewCell.swift
//  VKInterFace
//
//  Created by user on 01/07/2022.
//

import UIKit

class GroupTVCell: UITableViewCell {

    @IBOutlet var imageGroupInList: UIImageView!
    @IBOutlet var nameGroupInList: UILabel!
    @IBOutlet var buttonInList: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageGroupInList.layer.cornerRadius = imageGroupInList.bounds.width / 2
    }
    //delete
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configurate(name: String, image: UIImage) {
        nameGroupInList.text = name
        imageGroupInList.image = image
    }
    
    @IBAction func pressedBttnList(_ sender: Any) {
        print("User press button in list group")
    }
}


