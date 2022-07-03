//
//  LentaNewsVC.swift
//  VKInterFace
//
//  Created by user on 03/07/2022.
//

import UIKit

class LentaNewsVC: UIViewController {

    @IBOutlet var lentaOutletCollectionView: UICollectionView!
    
//    var arrayFullingLenta : FullingLentaCell = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.lentaOutletCollectionView.register(
            UINib(nibName: "LentaCVCell", bundle: nil),
            forCellWithReuseIdentifier: Constants.Cell.lentaCVCell)
        
//        uploadNews()
    }
    
//    private func uploadNews() {
//        let news: [FullingLentaCell] = [
//            .init(smallImage: UIImage(named: "kate"), nameNewsLenta: "СРОЧНО!", timeAgo: "5 min ago", textTFNews: "Констрейнты убежали", bigImage: UIImage(named: "moto"), resource: "www.gb.ru", likeNews: 331),
//            .init(smallImage: UIImage(named: "Anya"), nameNewsLenta: "СРОЧНО!", timeAgo: "5 min ago", textTFNews: "Констрейнты убежали", bigImage: UIImage(named: "air"), resource: "www.gb.ru", likeNews: 331)
//        ]
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//            self.
//        }
//    }
}

extension LentaNewsVC: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cell.lentaCVCell, for: indexPath)
    }
}

extension LentaNewsVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        (cell as? LentaCVCell)?.configur(with: .init(smallImage: UIImage(named: "kate"), nameNewsLenta: "СРОЧНО!", timeAgo: "5 minuts ago",
            textTFNews: "Эта ячейка долго собиралась, на нее было потрачено столько времени, а почему отвелились констрейнты я не понял",
            bigImage: UIImage(named: "moto"), resource: "site: www.GB.ru", likeNews: 9999))

//            nameImageFriend: newFriends[indexPath.row].image!,
//            nameFriend: newFriends[indexPath.row].name)
    }
}
