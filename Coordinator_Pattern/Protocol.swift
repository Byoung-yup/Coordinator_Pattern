//
//  Protocol.swift
//  Coordinator_Pattern
//
//  Created by 김병엽 on 2022/12/01.
//

import Foundation

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func start()
}


