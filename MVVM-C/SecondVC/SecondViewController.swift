//
//  SecondViewController.swift
//  MVVM-C
//
//  Created by Evgenii Kutasov on 14.04.2024.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    weak var secondViewControllerCoordinator: SecondVCCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "Second"
    }
}
