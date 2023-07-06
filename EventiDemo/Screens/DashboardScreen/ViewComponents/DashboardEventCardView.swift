//
//  DashboardEventCardView.swift
//  EventsApp
//
//  Created by i.skountrianos on 5/6/23.
//

import SwiftUI

struct DashboardEventCardViewDependencies {
    
    var imageName: String
    var title: String
    var location: String
}

struct DashboardEventCardView: View {
    
    typealias Dependencies = DashboardEventCardViewDependencies
     
    let dependencies: Dependencies
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            Image(dependencies.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 220, height: 220)
            VStack(spacing: 5) {
                Text(dependencies.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 10)
                HStack(spacing: 5) {
                    Image(systemName: "mappin.circle.fill")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .aspectRatio(contentMode: .fit)
                    Text(dependencies.location)
                        .font(.caption2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 10)
            }
            .frame(height: 60)
            .frame(maxWidth: .infinity)
            .background()
        }
        .clipped()
        .cornerRadius(10)
        .shadow(radius: 10)
    }
}
