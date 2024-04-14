//
//  MainVCCoordinator.swift
//  MVVM-C
//
//  Created by Evgenii Kutasov on 14.04.2024.
//

import UIKit

class MainVCCoordinator: BaseCoorditator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        let mainViewController = MainViewController()
        mainViewController.mainViewControllerCoordinator = self
        navigationController.pushViewController(mainViewController, animated: true)
    }
    
    func runSecond() {
        let secondVCCoordinate = SecondVCCoordinator(navigationController: navigationController)
        add(coordinator: secondVCCoordinate)
        secondVCCoordinate.start()
    }
    
    func runThird() {
        let thirdVCCoordinate = ThirdVCCoordinate(navigationController: navigationController)
        add(coordinator: thirdVCCoordinate)
        thirdVCCoordinate.start()
    }
    
}
