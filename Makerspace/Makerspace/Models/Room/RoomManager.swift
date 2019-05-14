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
    
    var delegate: RoomManagerDelegate?
    
    let users = UserManager.instance.users
    var rooms = [Room]()
    
    let room1 = Room(roomName: "Welding Lab", totalUsers: 0, uniqueUsers: [])
    let room2 = Room(roomName: "3D Print", totalUsers: 0, uniqueUsers: [])
    let room3 = Room(roomName: "Hydrolics Lab", totalUsers: 0, uniqueUsers: [])
    let room4 = Room(roomName: "Underwater Lair", totalUsers: 0, uniqueUsers: [])
    let room5 = Room(roomName: "Wood Lab", totalUsers: 0, uniqueUsers: [])
    
    
    
    
    func populateRooms() -> [Room] {
        let rooms: [Room] = [room1, room2, room3, room4, room5]
        return rooms
    }
    
    
    //increments total users for a specified room
    func incrementTotalUsers(room: String) {
        let rooms = populateRooms()
        for space in rooms {
            if space.roomName == room {
                space.totalUsers! += 1
                RoomNetworkAdaptor.instance.updateUsers(room: space)
            }
        }
    }
    
    
    //checks if user is unique before adding it
    func updateUniqueUsers(room: String, email: String) {
        let rooms = populateRooms()
        for space in rooms {
            if space.roomName == room {
                if space.uniqueUsers.contains(email) {
                    return
                }
                else {
                    space.uniqueUsers.append(email)
                    RoomNetworkAdaptor.instance.updateUsers(room: space)
                }
            }
        }
    }
    
    
    //closure communicating from NetworkAdaptor to UserManager
    func loadRooms() -> [Room] {
        let adaptor = RoomNetworkAdaptor()
        
        adaptor.retrieveRooms { (rooms) in
            if let rooms = rooms {
                self.rooms.removeAll()
                self.rooms.append(contentsOf: rooms)
                self.delegate?.roomsRetrieved()
            }
        }
        return rooms
    }
    
} //end class

protocol RoomManagerDelegate {
    func roomsRetrieved()
}
