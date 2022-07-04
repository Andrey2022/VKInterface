//
//  LentaCVCell.swift
//  VKInterFace
//
//  Created by user on 01/07/2022.
//


// 25 минцта
import UIKit

class LentaCVCell: UICollectionViewCell {

    @IBOutlet var imageGroupInLenta: UIImageView!
    @IBOutlet var firstLabelBoldLenta: UILabel!
    @IBOutlet var labelHowLongIsHere: UILabel!
    @IBOutlet var textLentaTF: UILabel!
    @IBOutlet var imageViewLentaInfo: UIImageView!
    @IBOutlet var resourcesAboutInfo: UILabel!
    
    @IBOutlet var howMuchLike: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func giveMeLikeLenta(_ sender: Any) {
        print("U take ME Like!")
        var namesomeLike = Int(howMuchLike.text!) ?? 0
        namesomeLike = namesomeLike + 1
        howMuchLike.text = String(namesomeLike)
    }
    
    func configur(with item: FullingLentaCell){
        self.imageGroupInLenta.image = item.smallImage
        self.firstLabelBoldLenta.text = item.nameNewsLenta
        self.labelHowLongIsHere.text = item.timeAgo
        self.textLentaTF.text = item.textTFNews
        self.imageViewLentaInfo.image = item.bigImage
    }
}
