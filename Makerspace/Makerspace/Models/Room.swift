//
//  Room.swift
//  Makerspace
//
//  Created by Rob McMahon on 5/6/19.
//  Copyright © 2019 Rob McMahon. All rights reserved.
//

import Foundation

class Room {
    
    var roomID: String
    var totalUsers: Int
    var currentUsers: [User?]
    
    init(roomID: String, totalUsers: Int, currentUsers: [User?]) {
        self.roomID = roomID
        self.totalUsers = totalUsers
        self.currentUsers = currentUsers
    }
    
} //end class 
