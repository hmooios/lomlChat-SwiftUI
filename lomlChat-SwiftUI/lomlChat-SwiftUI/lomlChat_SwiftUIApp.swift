//
//  lomlChat_SwiftUIApp.swift
//  lomlChat-SwiftUI
//
//  Created by Hmoo Myat Theingi on 07/01/2024.
//

import SwiftUI
import FirebaseCore

@main
struct lomlChat_SwiftUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
    
 
}

