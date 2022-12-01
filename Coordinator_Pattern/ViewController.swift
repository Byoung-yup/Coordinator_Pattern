//
//  ViewController.swift
//  Coordinator_Pattern
//
//  Created by 김병엽 on 2022/12/01.
//

import UIKit

protocol ViewControllerDelegate {
    func logout()
}

class ViewController: UIViewController {

    var delegate: ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = UIBarButtonItem(title: "로그아웃", style: .plain, target: self, action: #selector(logoutButtonDidTap))
        self.navigationItem.rightBarButtonItem = item
    }
    
    deinit {
        print("- \(type(of: self)) deinit")
    }
    
    @objc func logoutButtonDidTap() {
        self.delegate?.logout()
    }
}

