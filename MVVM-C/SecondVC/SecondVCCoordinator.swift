//
//  SecondVCCoordinator.swift
//  MVVM-C
//
//  Created by Evgenii Kutasov on 15.04.2024.
//

import Foundation
import UIKit

class SecondVCCoordinator: BaseCoorditator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let secondViewController = SecondViewController()
        secondViewController.secondViewControllerCoordinator = self
        navigationController.pushViewController(secondViewController, animated: true)
    }
    
}
