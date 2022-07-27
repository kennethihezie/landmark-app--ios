//
//  LandMarkAppApp.swift
//  LandMarkApp
//
//  Created by Gava Developer on 11/07/2022.
//

import SwiftUI

@main
struct LandMarkAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
