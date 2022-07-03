//
//  ListGroupVC.swift
//  VKInterFace
//
//  Created by user on 01/07/2022.
//

import UIKit

class ListGroupVC: UIViewController {
    
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
    
    @IBOutlet var listGroupTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.listGroupTV.register(
            UINib(nibName: "GroupCellXib", bundle: nil),
            forCellReuseIdentifier: Constants.Cell.groupCellXib)
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriends.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: Constants.Cell.groupCellXib, for: indexPath)
    }
}
extension ListGroupVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        (cell as? GroupTVCell)?.configurate(
            name: myFriends[indexPath.row].name,
            image: myFriends[indexPath.row].image!)
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

