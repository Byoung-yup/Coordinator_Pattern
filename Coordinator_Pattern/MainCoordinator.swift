//
//  MainCoordinator.swift
//  Coordinator_Pattern
//
//  Created by 김병엽 on 2022/12/01.
//

import Foundation
import UIKit

protocol MainCoordinatorDelegate {
    func didLoggedOut(_ coordinator: MainCoordinator)
}

class MainCoordinator: Coordinator, ViewControllerDelegate {
    
    var childCoordinators: [Coordinator] = []
    var delegate: MainCoordinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = ViewController()
        viewController.view.backgroundColor = .cyan
        viewController.delegate = self
        
        self.navigationController.viewControllers = [viewController]
    }
    
    func logout() {
        self.delegate?.didLoggedOut(self)
    }
}
