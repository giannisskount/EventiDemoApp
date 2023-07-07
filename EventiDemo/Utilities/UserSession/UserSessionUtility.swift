//
//  UserSessionUtility.swift
//  EventiDemo
//
//  Created by i.skountrianos on 7/7/23.
//

import Foundation

class UserSessionUtility: ObservableObject {
    
    static let shared = UserSessionUtility()
    
    enum ConnectionState {
        case loggedIn
        case loggedOut
    }
    
    @Published private(set) var state: ConnectionState = .loggedOut
    
    init(state: ConnectionState = .loggedOut) {
        self.state = state
    }
    
    func setUserConnectState(state: ConnectionState) {
        self.state = state
    }
}
