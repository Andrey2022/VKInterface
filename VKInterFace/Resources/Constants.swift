//
//  Constants.swift
//  VKInterFace
//
//  Created by user on 01/07/2022.
//

import UIKit


enum Constants {
    
    enum StringAlert {
        static let alertLogin = "Такого логина нет в базе"
        static let alertEmptyText = "У вас остались незаполненные строки"
        static let alertPassword = "Не правильный пароль, восстановите пароль или зарегистрируйтесь, кнопка регистрации появится ниже"
    }
    
    enum StoryBoards {
        static let registrationStoryBoard : UIStoryboard = .init(name: "RegistrationStoryboard", bundle: nil)
        static let appTabBarStoryBoard : UIStoryboard = .init(name: "TabBarFace", bundle: nil)
        static let infoStoryBoard : UIStoryboard = .init(name: "InfoStoryBoard", bundle: nil)
    }
    
    enum Cell {
        //tableView
        static let topCellXib: String = "TopCellXib"
        static let groupCellXib: String = "GroupCellXib"
        
        
        //collectionView
        static let historyFriendCellXib: String = "HistoryFriendCellXib"
        static let lentaCVCell: String = "LentaCVCell"
    }
}
