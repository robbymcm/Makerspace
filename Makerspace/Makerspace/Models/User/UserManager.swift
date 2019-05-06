//
//  UserManager.swift
//  Makerspace
//
//  Created by Rob McMahon on 5/6/19.
//  Copyright © 2019 Rob McMahon. All rights reserved.
//

import Foundation
import Firebase

class UserManager {
    
    static let instance = UserManager()
    init(){}
    
    var users = [User]()
    
    var count: Int {
        return users.count
    }
    
    
    
    func createUser(name: String, email: String, status: Bool) {
        let newUser = User(name: name, email: email, status: status, badgeID: "test")
        users.append(newUser)
    }
    
} //end class 
