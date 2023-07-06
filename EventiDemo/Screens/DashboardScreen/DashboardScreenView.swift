//
//  DashboardScreenView.swift
//  EventsApp
//
//  Created by i.skountrianos on 3/6/23.
//

import SwiftUI

struct DashboardScreenView: View {
    
    @State var text: String = ""
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 30) {
                RecommendedEventsView()
                PopularEventsView()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                NavigationBarView.init()
            }
        }
        .searchable(text: $text, placement: .toolbar, prompt: Text("Find events"))
    }
    
    struct RecommendedEventsView: View {
        
        var body: some View {
            
            VStack {
                HStack {
                    Text("Recommended Events")
                        .bold()
                    Spacer()
                    Text("View All")
                        .font(.caption)
                        .foregroundColor(Color.init(red: 178/255, green: 178/255, blue: 178/255))
                }
                .padding(.horizontal, 20)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(1..<6) { item in
                            let deps = DashboardEventCardViewDependencies.init(imageName: "event_image_\(item)",
                                                                               title: "Jazz Music festival",
                                                                               location: "London, NA")
                            DashboardEventCardView(dependencies: deps)
                        }
                        .padding(.vertical, 20)
                    }
                    .padding(.horizontal, 20)
                }
                .frame(height: 240)
            }
        }
    }
    
    struct PopularEventsView: View {
        
        var body: some View {
            
            VStack {
                HStack {
                    Text("Popular Events")
                        .bold()
                    Spacer()
                    Text("View All")
                        .font(.caption)
                        .foregroundColor(Color.init(red: 178/255, green: 178/255, blue: 178/255))
                }
                HStack(spacing: 10) {
                    Image("event_image_4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 125, height: 100)
                        .clipped()
                        .cornerRadius(10)
                    VStack {
                        Text("14 Dec - 08:00 PM")
                            .font(.caption2)
                            .foregroundColor(Color.init(red: 92/255, green: 198/255, blue: 189/255))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Meetup Party")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Ciclapad, NA")
                            .font(.caption2)
                            .foregroundColor(Color.init(red: 178/255, green: 178/255, blue: 178/255))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Image(systemName: "ellipsis")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 20)
                }
                
                HStack(spacing: 10) {
                    Image("event_image_5")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 125, height: 100)
                        .clipped()
                        .cornerRadius(10)
                    VStack {
                        Text("14 Dec - 08:00 PM")
                            .font(.caption2)
                            .foregroundColor(Color.init(red: 92/255, green: 198/255, blue: 189/255))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Meetup Party")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Ciclapad, NA")
                            .font(.caption2)
                            .foregroundColor(Color.init(red: 178/255, green: 178/255, blue: 178/255))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    Image(systemName: "ellipsis")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 20)
                }
                
                HStack(spacing: 10) {
                    Image("event_image_3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 125, height: 100)
                        .clipped()
                        .cornerRadius(10)
                    VStack {
                        Text("26 Dec - 08:00 PM")
                            .font(.caption2)
                            .foregroundColor(Color.init(red: 92/255, green: 198/255, blue: 189/255))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Meetup Party")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Athens, GR")
                            .font(.caption2)
                            .foregroundColor(Color.init(red: 178/255, green: 178/255, blue: 178/255))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    Image(systemName: "ellipsis")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 20)
                }
            }
            .padding(.horizontal, 20)
        }
    }
    
    struct NavigationBarView: View {
        
        var body: some View {
            
            HStack {
                Image(systemName: "list.bullet.indent")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                Spacer()
                Text("Explore")
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
            }
        }
    }
}

struct DashboardScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreenView()
    }
}
