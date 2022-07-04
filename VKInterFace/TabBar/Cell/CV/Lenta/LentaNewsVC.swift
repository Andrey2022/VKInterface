//
//  LentaNewsVC.swift
//  VKInterFace
//
//  Created by user on 03/07/2022.
//

import UIKit

class LentaNewsVC: UIViewController {

    @IBOutlet var lentaOutletCollectionView: UICollectionView!
    
    var arrayFullingLenta : [FullingLentaCell] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.lentaOutletCollectionView.register(
            UINib(nibName: "LentaCVCell", bundle: nil),
            forCellWithReuseIdentifier: Constants.Cell.lentaCVCell)
        
        uploadNews()
    }
    
    private func uploadNews() {
        let news: [FullingLentaCell] = [
            .init(smallImage: UIImage(named: "kate"), nameNewsLenta: "СРОЧНО!", timeAgo: "5 min ago", textTFNews: "Констрейнты убежали", bigImage: UIImage(named: "moto"), resource: "www.gb.ru", likeNews: 331),
            .init(smallImage: UIImage(named: "Anya"), nameNewsLenta: " NO СРОЧНО!", timeAgo: "5 min ago", textTFNews: "Констрейнты убежали", bigImage: UIImage(named: "air"), resource: "www.gb.ru", likeNews: 331),
            .init(smallImage: UIImage(named: "kate"), nameNewsLenta: "YEs!", timeAgo: "5 min ago", textTFNews: "Констрейнты убежали", bigImage: UIImage(named: "big"), resource: "www.gb.ru", likeNews: 331),
            .init(smallImage: UIImage(named: "Anya"), nameNewsLenta: "СРОЧНО!", timeAgo: "5 min ago", textTFNews: "Констрейнты убежали", bigImage: UIImage(named: "car"), resource: "www.gb.ru", likeNews: 331)
            
        ]
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.arrayFullingLenta = news
            self.lentaOutletCollectionView.reloadData()
        }
    }
}

extension LentaNewsVC: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayFullingLenta.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cell.lentaCVCell, for: indexPath)
    }
}

extension LentaNewsVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        (cell as? LentaCVCell)?.configur(with: arrayFullingLenta[indexPath.row])
    }
}
