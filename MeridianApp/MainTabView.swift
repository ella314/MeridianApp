//
//  MainTabView.swift
//  MeridianApp
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }

            TimerView()
                .tabItem {
                    Label("Timer", systemImage: "hourglass")
                }

            //MoodTrackerView()
                //.tabItem {
                    //Label("Mood", systemImage: "face.smiling")
                //}

            Journal()
                .tabItem {
                    Label("Journal", systemImage: "note.text")
                }
        }
    }
}

#Preview {
    MainTabView()
}
