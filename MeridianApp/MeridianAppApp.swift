//
//  MeridianAppApp.swift
//  MeridianApp
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI
import SwiftData

@main
struct MeridianAppApp: App {
    var body: some Scene {
        WindowGroup {
           MainTabView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
