//
//  AppDelegate.swift
//  lojinha
//
//  Created by Inácio Ferrarini on 16/07/19.
//  Copyright © 2019 inacio. All rights reserved.
//

import UIKit
import Common

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tabBarController = UITabBarController()
        
        coordinator = MainCoordinator(tabBarController: tabBarController)
        
        coordinator?.start()

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true
    }

}

