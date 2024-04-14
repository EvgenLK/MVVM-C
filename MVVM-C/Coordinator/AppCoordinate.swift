//
//  AppCoordinate.swift
//  MVVM-C
//
//  Created by Evgenii Kutasov on 14.04.2024.
//

import UIKit

class AppCoordinate: BaseCoorditator {
    
    private var window: UIWindow
    
    private var navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        
        return navigationController
    }()
    
    init(window: UIWindow) {
        self.window = window
        self.window.rootViewController = navigationController
        self.window.makeKeyAndVisible()
    }
    
    override func start() {
        let mainVCCoordinator = MainVCCoordinator(navigationController: navigationController)
        add(coordinator: mainVCCoordinator)
        mainVCCoordinator.start()
    }
}
