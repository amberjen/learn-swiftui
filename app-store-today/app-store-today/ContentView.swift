//
//  ContentView.swift
//  app-store-today
//
//  Created by Amber Jen on 2021/7/20.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        ZStack {
            
        
            
        TabView() {
            
            // Today
            TodayView()
                .tabItem {
                    Label("Today", systemImage: "flame.fill")
                }
            
            // Games
            Text("Arcade Content")
                .tabItem {
                    Label("Arcade", systemImage: "circle.grid.cross.fill")
                }
            
            // Apps
            Text("Apps Content")
                .tabItem {
                    Label("Apps", systemImage: "gift.fill")
                }
            
            
            // Arcade
            Text("Arcade Content")
                .tabItem {
                    Label("Arcade", systemImage: "gamecontroller.fill")
                }
            
            // Search
            Text("Search Content")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
        }.accentColor(.pink)
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
