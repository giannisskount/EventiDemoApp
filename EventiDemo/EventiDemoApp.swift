//
//  EventiDemoApp.swift
//  EventiDemo
//
//  Created by User on 10/6/23.
//

import SwiftUI
import FirebaseCore

@main
struct EventiDemoApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var navigationUtility = NavigationUtility.shared
    
    var body: some Scene {
        
        WindowGroup {
            NavigationStack(path: $navigationUtility.navigationPath) {
                RootView()
                    .navigationDestination(for: NavigationObject.self) { object in
                        AnyView(object.view)
                    }
            }
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
