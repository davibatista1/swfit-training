//
//  myiOSAppApp.swift
//  myiOSApp
//
//  Created by Davi Batista on 11/04/24.
//

import SwiftUI

@main
struct myiOSAppApp: App {
    
    var isUserLoggedIn: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isUserLoggedIn {
                MainView()
            } else {
                LoginView()
            }
        }
    }
}
