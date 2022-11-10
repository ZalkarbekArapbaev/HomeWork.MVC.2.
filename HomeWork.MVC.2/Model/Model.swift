//
//  Model.swift
//  HomeWork.MVC.2
//
//  Created by zalkarbek on 10/11/22.
//

import Foundation

class Model {
    private weak var controller: Controller?
    private var serviceStore = LocalStore.shared
    
    
    init(controller: Controller) {
        self.controller = controller
    }
    
    
    func proverka(user: String, pass: String) {
        serviceStore.users.updateValue(user, forKey: pass)
        print("Model recievied: \(user) and \(pass)")
    }
    
    func test() -> [String: String] {
        return serviceStore.users
    }
    
    
}
