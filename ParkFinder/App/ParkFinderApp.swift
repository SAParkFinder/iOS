//
//  ParkFinderApp.swift
//  ParkFinder
//
//  Created by Leonard Box on 5/24/21.
//

import SwiftUI
import Firebase

@main
struct ParkFinderApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            let viewModel = AuthViewModel()
            AuthView()
                .environmentObject(viewModel)
        }
    }
}
