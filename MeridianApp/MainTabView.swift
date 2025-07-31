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
            TodoViewMainView()
              .tabItem {
                Label("To Do", systemImage: "checkmark.square")
              }
          TimerView()
            .tabItem {
              Label("Timer", systemImage: "hourglass")
            }
          MoodTracker()
            .tabItem {
              Label("Mood", systemImage: "face.smiling")
            }
          JournalPasswordView()
            .tabItem {
              Label("Journal", systemImage: "note.text")
            }
        }
        .navigationBarBackButtonHidden(true)
      }
    }
    #Preview {
      MainTabView()
    }










