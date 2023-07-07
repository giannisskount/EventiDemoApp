//
//  RootView.swift
//  EventsApp
//
//  Created by i.skountrianos on 3/6/23.
//

import SwiftUI

struct RootView: View {
    
    @StateObject var viewModel: RootViewModel = .init()
    @StateObject var userSessionUtility = UserSessionUtility.shared
        
    var body: some View {
        self.getRootView()
    }
    
    @ViewBuilder
    private func getRootView() -> some View {
        
        switch self.userSessionUtility.state {
        case .loggedIn:
            DashboardScreenView.init()
        case .loggedOut:
            LoginView.init()
        }
    }
}

import FirebaseAuth

struct FirstView: View {
     
    @Binding var loggedIn: Bool
    
    var body: some View {
//        GeometryReader { proxy in
        ScrollView {
            VStack {
                Text("Loggout Screen")
                Button {
                    withAnimation(.easeOut, {
                        self.loggedIn = true
                    })
                } label: {
                    Text("Move to log in")
                }
                Button {
                    self.register()
                } label: {
                    Text("Register dummy")
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private func register() {
        
        Auth.auth().createUser(withEmail: "random@gmail.com", password: "123Skount123") { authResult, error in
            print(authResult, error)
        }
    }
}
