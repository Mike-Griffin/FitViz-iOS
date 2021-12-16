//
//  UserDefaultManager.swift
//  FitViz-iOS
//
//  Created by Mike Griffin on 12/15/21.
//

import UIKit

enum DefaultsKeys: String {
    case showOnboarding
}

class UserDefaultManager {
    // singleton to access user defaults from anywhere
    static let shared = UserDefaultManager()
    let defaults = UserDefaults.standard
    
    func setShowOnboarding() {
        defaults.set(true, forKey: DefaultsKeys.showOnboarding.rawValue)
    }
    
    func getShowOnboarding() -> Bool {
        return defaults.bool(forKey: DefaultsKeys.showOnboarding.rawValue)
    }
}
