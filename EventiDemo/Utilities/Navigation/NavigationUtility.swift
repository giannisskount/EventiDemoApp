//
//  NavigationUtility.swift
//  EventsApp
//
//  Created by i.skountrianos on 3/6/23.
//

import SwiftUI

class NavigationUtility: ObservableObject {
    
    static let shared = NavigationUtility()
    
    @Published var navigationPath: [NavigationObject] {
        didSet {
            print(NavigationUtility.shared.navigationPath)
        }
    }
    
    init(navigationPath: [NavigationObject] = []) {
        self.navigationPath = navigationPath
    }
    
    static func pushView<Content: View>(view: Content) {
        
        let navigationObject = NavigationObject.init(view: view)
        
        NavigationUtility.shared.navigationPath.append(navigationObject)
    }
    
    static func pushView<Content: View>(_ view: Content) {
        Self.pushView(view: view)
    }
    
    static func popToRootView() {
        NavigationUtility.shared.navigationPath.removeAll()
    }
    
    static func setRootView<Content: View>(rootView: Content) {
        
        let navigationObject = NavigationObject.init(view: rootView)
        
        NavigationUtility.shared.navigationPath.append(navigationObject)
    }
}
