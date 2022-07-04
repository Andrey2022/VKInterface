//
//  ListGroupVC.swift
//  VKInterFace
//
//  Created by user on 01/07/2022.
//

import UIKit

class ListGroupVC: UIViewController {
    
    @IBOutlet var searchBarFriends: UISearchBar! {
        didSet {
            searchBarFriends.delegate = self
        }
    }
    
    var filterFriens = [Friends]()
//    private var displayItems: [BasicDisplayItem] = []
    private var dataListGroup = [
        Group(name: "Большие машины", image: "big"),
        Group(name: "Мотоциклы", image: "moto"),
        Group(name: "Автомобили", image: "car"),
        Group(name: "Самолеты", image: "air")
    ]

//    var myFriends = [
//        Friends(name: "Anya", image: "Anya", friend: newFriend),
//        Friends(name: "kate", image: "kate", friend: newFriend),
//        Friends(name: "Anya", image: "Anya", friend: newFriend),
//        Friends(name: "kate", image: "kate", friend: newFriend),
//        Friends(name: "Anya", image: "Anya", friend: newFriend),
//        Friends(name: "kate", image: "kate", friend: newFriend),
//        Friends(name: "Anya", image: "Anya", friend: newFriend),
//        Friends(name: "kate", image: "kate", friend: newFriend),
//        Friends(name: "Anya", image: "Anya", friend: newFriend),
//        Friends(name: "kate", image: "kate", friend: newFriend)
//    ]
    var myFriends = [
        Friends(name: "Anya", image: "Anya"),
        Friends(name: "kate", image: "kate"),
        Friends(name: "Anya", image: "Anya")
    ]
    
    var sortedFriends = [Character: [Friends]]()
    
    @IBOutlet var listGroupTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.listGroupTV.register(
            UINib(nibName: "GroupCellXib", bundle: nil),
            forCellReuseIdentifier: Constants.Cell.groupCellXib)
        
        self.sortedFriends = sort(myFriends: myFriends)
    }
    
    private func sort(myFriends: [Friends]) -> [Character: [Friends]] {
        var friendsDict = [Character: [Friends]]()
        myFriends.forEach() { friend in
            
            guard let firstChar = friend.name.first else {return}
            
            if var  thisCharFriend = friendsDict[firstChar] {
                thisCharFriend.append(friend)
                friendsDict[firstChar] = thisCharFriend
            } else {
                friendsDict[firstChar] = [friend]
            }
        }
        
        return friendsDict
    }
    
    private func presentControllerFor(indexPath: IndexPath){
        
        let stroryboard = UIStoryboard(name: "Info", bundle: nil)
        let vc = stroryboard.instantiateInitialViewController()
        if let vc = vc as? InfoVC {
            self.present(vc, animated: true)
            vc.configur(like: 123, image: myFriends[indexPath.row].image)
        }
    }
}

extension ListGroupVC: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return sortedFriends.keys.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let keySorted = sortedFriends.keys.sorted()
        let frieds = sortedFriends[keySorted[section]]?.count ?? 0
        
        return frieds
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: Constants.Cell.groupCellXib, for: indexPath)
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        String(sortedFriends.keys.sorted()[section])
    }
    
}
extension ListGroupVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let firstChar = sortedFriends.keys.sorted()[indexPath.section]
        let friends = sortedFriends[firstChar]!
        let friend: Friends = friends[indexPath.row]
        
        (cell as? GroupTVCell)?.configurate(
            name: friend.name,
            image: friend.image!)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.presentControllerFor(indexPath: indexPath)
    }
    
    // удаление ячейки
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            self.myFriends.remove(at: indexPath.row)
            self.listGroupTV.deleteRows(at: [indexPath], with: .automatic)
        default:
            break
        }
    }
}

extension ListGroupVC: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}
