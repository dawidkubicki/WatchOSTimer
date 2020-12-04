//
//  WatchOSTimerApp.swift
//  WatchOSTimer WatchKit Extension
//
//  Created by Dawid Kubicki on 04/12/2020.
//

import SwiftUI

@main
struct WatchOSTimerApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
