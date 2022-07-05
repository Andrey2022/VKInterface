//
//  InfoVC.swift
//  VKInterFace
//
//  Created by user on 02/07/2022.
//

import UIKit

class InfoVC: UIViewController {
    
    var arrayForInfoFriend: [NewFriend] = []
    
    var someLike: Int = 1244
    
    @IBOutlet var imageInfo: UIImageView!
    @IBOutlet var buttonLike: UIButton!
    @IBOutlet var labelSumLike: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func giveMeLike(_ sender: Any) {
        print("U take ME Like!")
        someLike = someLike + 1
        labelSumLike.text = String(someLike)
    }
    
    func configur (like: Int, image: UIImage) {
        labelSumLike.text = String(someLike)
        imageInfo.image = image
    }
}


