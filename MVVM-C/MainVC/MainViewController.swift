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
        uiButton()
    }
    
    func uiButton() {
        let secondButton: UIButton = {
            let button = UIButton()
            button.setTitle("Button Second VC", for: .normal)
            button.backgroundColor = .black
            button.addTarget(self, action: #selector(secondVCrun) , for: .touchUpInside)
            button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
            button.center = CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
            return button
        }()
        
        let thirdButton: UIButton = {
            let button = UIButton()
            button.setTitle("Button Third VC", for: .normal)
            button.backgroundColor = .black
            button.addTarget(self, action: #selector(thirdVCrun) , for: .touchUpInside)
            button.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
            button.center = CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 3)
            return button
        }()
        view.addSubview(secondButton)
        view.addSubview(thirdButton)
    }
    @objc func secondVCrun() {
        mainViewControllerCoordinator.runSecond()
    }
    
    @objc func thirdVCrun() {
        mainViewControllerCoordinator.runThird()
    }
}

