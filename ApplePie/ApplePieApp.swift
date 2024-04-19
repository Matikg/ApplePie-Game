//
//  ApplePieApp.swift
//  ApplePie
//
//  Created by Mateusz Grudzień on 18/04/2024.
//

import SwiftUI

@main
struct ApplePieApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(GameModel())
        }
    }
}
