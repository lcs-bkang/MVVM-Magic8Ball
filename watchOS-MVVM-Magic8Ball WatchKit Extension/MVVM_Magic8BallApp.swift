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
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
