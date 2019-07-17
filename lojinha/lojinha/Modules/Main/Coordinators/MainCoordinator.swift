//
//  MainCoordinator.swift
//  lojinha
//
//  Created by Inácio Ferrarini on 16/07/19.
//  Copyright © 2019 inacio. All rights reserved.
//

import UIKit
import Common

class MainCoordinator: NSObject, Coordinator {
    
    var childCoordinators = [Coordinator]()
    var tabBarController: UITabBarController
    
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
    
    func start() {
        // Create UITabBarController itens programatically
        print("Initing tab bar")
        loadModules()
        
        
//        if let vc = ViewController.instantiate() {
//            vc.delegate = self
//            navigationController.pushViewController(vc, animated: false)
//        } else {
//            let coordinatorName = String(describing: self)
//            logFault(category: "ViewController", message: "Coordinator %{PUBLIC}@ failed to load ViewController %{PUBLIC}@ - instantiate() failed.", coordinatorName, "ViewController")
//        }

    }
    
    internal func loadModules() {
        print("loading modules ...")
    }
    
}
