//
//  RoomManager.swift
//  Makerspace
//
//  Created by Rob McMahon on 5/8/19.
//  Copyright © 2019 Rob McMahon. All rights reserved.
//

import Foundation

class RoomManager {
    
    static let instance = RoomManager()
    init(){}
    
//    var rooms : [Room]?
    let users = UserManager.instance.users
    
//    let room1 = Room(roomName: "Welding Lab", roomID: "12345", totalUsers: 0, currentUsers: [])
//    let room2 = Room(roomName: "3d Print", roomID: "77990", totalUsers: 0, currentUsers: [])
//    let room3 = Room(roomName: "Hydrolics Lab", roomID: "33345", totalUsers: 0, currentUsers: [])
//    let room4 = Room(roomName: "Underwater Lair", roomID: "80808", totalUsers: 0, currentUsers: [])
//    let room5  = Room(roomName: "Tilted Towers", roomID: "11111", totalUsers: 0, currentUsers: [])
    
    let room1 = Room(roomName: "Welding Lab", totalUsers: 0, uniqueUsers: 0)
    let room2 = Room(roomName: "3D Print", totalUsers: 0, uniqueUsers: 0)
    let room3 = Room(roomName: "Hydrolics Lab", totalUsers: 0, uniqueUsers: 0)
    let room4 = Room(roomName: "Underwater Lair", totalUsers: 0, uniqueUsers: 0)
    let room5 = Room(roomName: "Wood Lab", totalUsers: 0, uniqueUsers: 0)
    
    func populateRooms() -> [Room] {
        let rooms: [Room] = [room1, room2, room3, room4, room5]
        return rooms
    }
    
    func incrementTotalUsers(room: String) {
        let rooms = populateRooms()
        for space in rooms{
            if space.roomName == room {
                space.totalUsers += 1
            }
        }
    }
    
} //end class
