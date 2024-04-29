//
//  MainView.swift
//  Animalia
//
//  Created by User on 29/04/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Label("Browse", systemImage: "square.grid.2x2")
                }
            Text("Video view")
                .tabItem {
                    Label("Watch", systemImage: "play.rectangle")
                }
            Text("Map view")
                .tabItem {
                    Label("Locations", systemImage: "map")
                }
            Text("Gallery")
                .tabItem {
                    Label("Gallery", systemImage: "photo")
                }
        }
    }
}

#Preview {
    MainView()
}
