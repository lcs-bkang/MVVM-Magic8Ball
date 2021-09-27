//
//  MVVM_Magic8BallApp.swift
//  watchOS-MVVM-Magic8Ball WatchKit Extension
//
//  Created by Brad Kang on 2021-09-20.
//

import SwiftUI

@main
struct MVVM_Magic8BallApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            
            TabView {
                NavigationView {
                    ContentView()
                }
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Ask")
                }
                NavigationView {
                    HistoryView()
                }
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("History")
                }
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
