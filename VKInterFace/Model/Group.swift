//
//  Group.swift
//  VKInterFace
//
//  Created by user on 01/07/2022.
//

import UIKit

class Group {
    
    let name: String
    let image: UIImage!
    
    init(name: String, image: String) {
        self.name = name
        self.image = UIImage(named: image)
    }
    
}

class Friends {
    
    let name: String
    let image: UIImage!
    
    init(name: String, image: String) {
        self.name = name
        self.image = UIImage(named: image)
    }
}
//class Friends {
//
//    let name: String
//    let image: UIImage!
//
//    let friend: [NewFriend]
//
//    init(name: String, image: String, friend: [NewFriend]) {
//        self.name = name
//        self.image = UIImage(named: image)
//        self.friend = friend
//    }
//}

struct  NewFriend {
    let image: UIImage?
    let name: String
}

//var newFriend = [
//    NewFriend(image: UIImage(named: "Anya"), name: "Anya"),
//    NewFriend(image: UIImage(named: "Kate"), name: "Kate"),
//    NewFriend(image: UIImage(named: "Anya"), name: "Anya"),
//    NewFriend(image: UIImage(named: "Kate"), name: "Kate"),
//    NewFriend(image: UIImage(named: "Anya"), name: "Anya"),
//    NewFriend(image: UIImage(named: "Kate"), name: "Kate"),
//    NewFriend(image: UIImage(named: "Anya"), name: "Anya"),
//    NewFriend(image: UIImage(named: "Kate"), name: "Kate")
//]
