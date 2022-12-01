//
//  LoginCoordinator.swift
//  Coordinator_Pattern
//
//  Created by 김병엽 on 2022/12/01.
//

import Foundation
import UIKit

protocol LoginCoordinatorDelegate {
    func didLoggedIn(_ coordinator: LoginCoordinator)
}

class LoginCoordinator: Coordinator, LoginViewControllerDelegate {
    
    var childCoordinators: [Coordinator] = []
    var delegate: LoginCoordinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        viewController.view.backgroundColor = .brown
        viewController.delegate = self
        
        self.navigationController.viewControllers = [viewController]
    }
    
    func login() {
        self.delegate?.didLoggedIn(self)
    }
}
