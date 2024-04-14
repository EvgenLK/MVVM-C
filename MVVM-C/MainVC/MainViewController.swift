//
//  ViewController.swift
//  MVVM-C
//
//  Created by Evgenii Kutasov on 14.04.2024.
//

import UIKit

class MainViewController: UIViewController {
    
    weak var mainViewControllerCoordinator: MainVCCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Main"
        
        mainViewControllerCoordinator.runSecond()
    }
}

