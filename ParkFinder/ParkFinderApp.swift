//
//  ParkFinderApp.swift
//  ParkFinder
//
//  Created by Leonard Box on 5/24/21.
//

import SwiftUI

@main
struct ParkFinderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
