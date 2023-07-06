//
//  NavigationObject.swift
//  EventsApp
//
//  Created by i.skountrianos on 3/6/23.
//

import SwiftUI

struct NavigationObject: Hashable {
    
    let identifier: String
    var view: any View
   
    init(view: any View) {
        
        self.identifier = String(describing: view)
        self.view = view
    }
        
    func hash(into hasher: inout Hasher) {
        return hasher.combine(identifier)
    }
    
    static func == (lhs: NavigationObject, rhs: NavigationObject) -> Bool {
        lhs.identifier == rhs.identifier
    }
}
