//
//  MainTabView.swift
//  MeridianApp
//
//  Created by Scholar on 7/30/25.
//

    import SwiftUI

    struct MainTabView: View {
        init() {
            // Set selected and unselected icon colors
            UITabBar.appearance().tintColor = .black               // selected icon & label
            UITabBar.appearance().unselectedItemTintColor = .black // unselected icon & label
        }



      var body: some View {
        TabView {
          ContentView()
            .tabItem {
              Label("Home", systemImage: "house.fill")
            }
            TodoViewMainView().modelContainer(for: ToDoItem.self, inMemory: true)
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










