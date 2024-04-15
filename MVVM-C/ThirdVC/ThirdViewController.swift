//
//  ThirdViewController.swift
//  MVVM-C
//
//  Created by Evgenii Kutasov on 14.04.2024.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    
    weak var thirdViewControllerCoordinator: ThirdVCCoordinate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        title = "third"
    }
}
