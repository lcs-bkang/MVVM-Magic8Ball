//
//  MVVM_Magic8BallApp.swift
//  watchOS-MVVM-Magic8Ball WatchKit Extension
//
//  Created by Brad Kang on 2021-09-20.
//

import SwiftUI

@main
struct MVVM_Magic8BallApp: App {
    
    // Make an instance of the view model to store questions and advice
    // "Original" object
    @StateObject private var advisor = AdviceViewModel()
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            
            TabView {
                NavigationView {
                    ContentView(advisor: advisor)
                }
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Ask")
                }
                NavigationView {
                    HistoryView(advisor: advisor)
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
