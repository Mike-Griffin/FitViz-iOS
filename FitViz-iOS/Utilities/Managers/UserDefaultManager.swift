//
//  UserDefaultManager.swift
//  FitViz-iOS
//
//  Created by Mike Griffin on 12/15/21.
//

import UIKit

enum DefaultsKeys: String {
    case showOnboarding
    case fvUserId
}

class UserDefaultManager {
    // singleton to access user defaults from anywhere
    static let shared = UserDefaultManager()
    let defaults = UserDefaults.standard
    
    //MARK: Show Onboarding
    func setShowOnboarding() {
        defaults.set(true, forKey: DefaultsKeys.showOnboarding.rawValue)
    }
    
    func getShowOnboarding() -> Bool {
        return defaults.bool(forKey: DefaultsKeys.showOnboarding.rawValue)
    }
    
    //MARK: FVUserId
    func setUserId(_ id: Int) {
        defaults.set(id, forKey: DefaultsKeys.fvUserId.rawValue)
    }
    
    func getUserId() -> Int? {
        return defaults.integer(forKey: DefaultsKeys.fvUserId.rawValue)
    }
}
