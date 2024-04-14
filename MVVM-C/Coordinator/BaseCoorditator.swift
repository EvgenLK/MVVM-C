//
//  BaseCoorditator.swift
//  MVVM-C
//
//  Created by Evgenii Kutasov on 14.04.2024.
//

import Foundation

class BaseCoorditator: Coordinator {
    var childCoordinator: [Coordinator] = []
    
    func start() {
        fatalError("Child should implement funcStart")
    }
}
