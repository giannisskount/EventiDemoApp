//
//  LoginModel.swift
//  EventiDemo
//
//  Created by i.skountrianos on 7/7/23.
//

import Foundation

struct LoginModel {
    
    var emailAddress: String
    var password: String = ""
    
    init(emailAddress: String = "") {
        self.emailAddress = emailAddress
    }
    
    mutating func resetInputData() {
        self.emailAddress = ""
        self.password = ""
    }
}
