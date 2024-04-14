//
//  ThirdVCCoordinate.swift
//  MVVM-C
//
//  Created by Evgenii Kutasov on 15.04.2024.
//

import Foundation
import UIKit

class ThirdVCCoordinate: BaseCoorditator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let thirdViewController = ThirdViewController()
        thirdViewController.thirdViewControllerCoordinator = self
        navigationController.pushViewController(thirdViewController, animated: true)
    }
    
}
