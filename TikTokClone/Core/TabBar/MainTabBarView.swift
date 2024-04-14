//
//  MainTabBarView.swift
//  TikTokClone
//
//  Created by Clara Mounir Adly on 13/04/2024.
//

import SwiftUI

struct MainTabBarView: View {
    @State private var selectedTabBar = 0
    var body: some View {
        TabView (selection: $selectedTabBar){
            Text("Feed")
            .tabItem{
                VStack {
                    Image(systemName: selectedTabBar == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTabBar == 0 ? .fill : .none)
                    Text("Home")
                }
            }
            .onAppear{selectedTabBar = 0 }
            .tag(0)
            
            Text("Friends")
            .tabItem{
                VStack {
                    Image(systemName: selectedTabBar == 1 ? "person.2.fill" : "person.2")
                        .environment(\.symbolVariants, selectedTabBar == 1 ? .fill : .none)
                    Text("Friends")
                }
            }
            .onAppear{selectedTabBar = 1 }
            .tag(1)
            Text("Upload Post")
            .tabItem{
                VStack {
                    Image(systemName: "plus")
                    
                }
            }
            .onAppear{selectedTabBar = 2 }
            .tag(2)
            Text("Notifications")
            .tabItem{
                VStack {
                    Image(systemName: selectedTabBar == 3 ? "heart.fill" : "heart")
                        .environment(\.symbolVariants, selectedTabBar == 3 ? .fill : .none)
                    Text("Inbox")
                }
            }
            .onAppear{selectedTabBar = 3 }
            .tag(3)
            Text("Profile")
            .tabItem{
                VStack {
                    Image(systemName: selectedTabBar == 4 ? "person.fill" : "person")
                        .environment(\.symbolVariants, selectedTabBar == 4 ? .fill : .none)
                    Text("Profile")
                }
            }
            .onAppear{selectedTabBar = 4 }
            .tag(4)
        }
        .tint(.black)
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}
