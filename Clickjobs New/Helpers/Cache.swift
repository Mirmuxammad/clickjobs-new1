//
//  Cache.swift
//  Clickjobs New
//
//  Created by Mustafo Asqarov on 27/03/2022.
//

import Foundation

class Cache {
    
    
    static let share: Cache = Cache()
    
    
    
    func isUserLogged() -> Bool {
        return UserDefaults.standard.string(forKey: Keys.userToken) != nil
    }
    
    func getUserToken() -> String? {
        return UserDefaults.standard.string(forKey: Keys.userToken)
    }
    
    ///This method is for saving user session
    func setUser(token: String?) {
        UserDefaults.standard.set(token, forKey: Keys.userToken)
    }
    
    
    
    
    
}
