//
//  UsersDefaults.swift
//  Task 1
//
//  Created by Ogabek Matyakubov on 02/12/22.
//

import Foundation

class UsersDefaults { // UserDefaults class created already
    
    static let defaults = UserDefaults.standard
    
    static func saveUser(user: User) {
        let encoder = JSONEncoder()
        if let encodedUser = try? encoder.encode(user) {
            defaults.set(encodedUser, forKey: "user")
        }
    }
    
    static func loadUser() -> User? {
        if let savedUserData = defaults.object(forKey: "user") as? Data {
            let decoder = JSONDecoder()
            if let savedUser = try? decoder.decode(User.self, from: savedUserData) {
                return savedUser
            }
        }
        return nil
    }
    
    
    
}
