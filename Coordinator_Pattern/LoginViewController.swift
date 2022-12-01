//
//  LoginViewController.swift
//  Coordinator_Pattern
//
//  Created by 김병엽 on 2022/12/01.
//

import Foundation
import UIKit

protocol LoginViewControllerDelegate {
    func login()
}

class LoginViewController: UIViewController {
    
    var delegate: LoginViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = UIBarButtonItem(title: "로그인", style: .plain, target: self, action: #selector(loginButtonDidTap))
        self.navigationItem.rightBarButtonItem = item
    }
    
    deinit {
        print("- \(type(of: self)) deinit")
    }
    
    @objc func loginButtonDidTap() {
        self.delegate?.login()
    }
}
