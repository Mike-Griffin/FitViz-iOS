//
//  AppDelegate.swift
//  FitViz-iOS
//
//  Created by Mike Griffin on 12/14/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let tabBarController = UITabBarController()
        let homeTabController = HomeViewController()
        let settingsTabController = SettingsViewController()
        homeTabController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        settingsTabController.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gearshape"), selectedImage: UIImage(systemName: "gearshape.fill"))
        tabBarController.viewControllers = [homeTabController, settingsTabController]
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }


}

