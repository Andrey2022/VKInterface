//
//  ViewController.swift
//  VKInterFace
// https://www.youtube.com/watch?v=3HRWDtYK0Jo
//  Created by user on 01/07/2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    var arrayFriend: [NewFriend] = []

    var newFriends = [
        Friend(name: "Anya", image: "Anya"),
        Friend(name: "Kate", image: "kate"),
        Friend(name: "Anya", image: "Anya"),
        Friend(name: "Anya", image: "Anya"),
        Friend(name: "Kate", image: "kate"),
        Friend(name: "Anya", image: "Anya"),
        Friend(name: "Kate", image: "kate"),
        Friend(name: "Anya", image: "Anya"),
        Friend(name: "Kate", image: "kate"),
        Friend(name: "Anya", image: "Anya"),
        Friend(name: "Kate", image: "kate")
    ]

    @IBOutlet var topicTV: UITableView!
    @IBOutlet var collectionHistoryFriend: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topicTV.register(
            UINib(nibName: "TopCell", bundle: nil),
            forCellReuseIdentifier: Constants.Cell.topCellXib)
        
        self.collectionHistoryFriend.register(
            UINib(nibName: "HistoryFriendCellXib", bundle: nil),
            forCellWithReuseIdentifier: Constants.Cell.historyFriendCellXib)
    }
}

extension FirstViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: Constants.Cell.topCellXib, for: indexPath)
    }
}

extension FirstViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        (cell as? TopicTVCell)?.configurate(name: "News", name2: "For you", name3: "Trending")
        print(cell)
    }
    
    private func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath){
        print(indexPath.row)
    }
}

extension FirstViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newFriends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Cell.historyFriendCellXib, for: indexPath)
    }
    
    private func presentControllerFor(indexPath: IndexPath){
        
        let stroryboard = UIStoryboard(name: "LentaStoryboard", bundle: nil)
        let lentaVC = stroryboard.instantiateInitialViewController()
        if let lentaVC = lentaVC as? LentaNewsVC {
            self.present(lentaVC, animated: true)
            print("fffff")
//            vc.confi
        }
    }
}

extension FirstViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        (cell as? HistoryFriendCell)?.configuration(
            nameImageFriend: newFriends[indexPath.row].image!,
            nameFriend: newFriends[indexPath.row].name)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.presentControllerFor(indexPath: indexPath)
    }
}



