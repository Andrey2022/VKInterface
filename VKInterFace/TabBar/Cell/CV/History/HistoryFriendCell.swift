//
//  CollectionViewCell.swift
//  VKInterFace
//
//  Created by user on 01/07/2022.
//

import UIKit

class HistoryFriendCell: UICollectionViewCell {

    @IBOutlet var imageFriendHistoryCell: UIImageView!
    @IBOutlet var nameFriendHistoryCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configuration(nameImageFriend: UIImage, nameFriend: String) {
        imageFriendHistoryCell.image = nameImageFriend
        nameFriendHistoryCell.text = nameFriend
    }

}
