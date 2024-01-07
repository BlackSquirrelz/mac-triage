//
//  MacTriageApp.swift
//  MacTriage
//
//  Created by BlackSquirrelz on 12.02.23.
//



import SwiftUI


struct User {
    let username: String
    let userID: String
}

@main
struct MacTriageApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
