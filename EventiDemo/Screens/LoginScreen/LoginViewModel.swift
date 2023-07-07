//
//  LoginViewModel.swift
//  EventiDemo
//
//  Created by i.skountrianos on 7/7/23.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    
    @Published private var model: LoginModel
    
    init(model: LoginModel) {
        self.model = model
    }
    
    func handleLoginButtonTapped() {
        self.performSignIn()
    }
    
    func performSignIn() {
        
        Auth.auth().signIn(withEmail: self.emailAddress, password: self.password) { authResult, error in
            
            guard let authResult = authResult else {
                self.handleFailureLogin()
                return
            }
            
            self.handleSuccessfullLogin(authResult)
        }
    }
    
    private func handleSuccessfullLogin(_ authResult: AuthDataResult) {
        
        UserSessionUtility.shared.setUserConnectState(state: .loggedIn)
    }
    
    private func handleFailureLogin() {
        
        DispatchQueue.main.async {
            self.model.resetInputData()
        }
    }
}

extension LoginViewModel {
    
    var emailAddress: String {
        get { self.model.emailAddress }
        set { self.model.emailAddress = newValue }
    }
    
    var password: String {
        get { self.model.password }
        set { self.model.password = newValue }
    }
}
 
