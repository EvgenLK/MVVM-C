//
//  Coordinator.swift
//  MVVM-C
//
//  Created by Evgenii Kutasov on 14.04.2024.
//

import Foundation

protocol Coordinator: AnyObject {
    var childCoordinator: [Coordinator] { get set }
    func start()
}

extension Coordinator {
    
    func add(coordinator: Coordinator) {
        childCoordinator.append(coordinator)
    }
    
    func remove(coordintor: Coordinator) {
        childCoordinator = childCoordinator.filter {$0 !== coordintor}
    }
}
