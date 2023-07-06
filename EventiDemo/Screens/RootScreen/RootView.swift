//
//  RootView.swift
//  EventsApp
//
//  Created by i.skountrianos on 3/6/23.
//

import SwiftUI

struct RootView: View {
    
    @StateObject var viewModel: RootViewModel = .init()
        
    var body: some View {
        self.getRootView()
    }
    
    @ViewBuilder
    private func getRootView() -> some View {
        
        switch self.viewModel.loggedIn {
        case true:
            DashboardScreenView.init()
        case false:
            FirstView.init(loggedIn: self.$viewModel.loggedIn)
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

//struct RootView_Previews: PreviewProvider {
//    static var previews: some View {
//        RootView()
//    }
//}
