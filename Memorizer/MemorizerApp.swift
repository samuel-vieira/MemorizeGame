//
//  MemorizerApp.swift
//  Memorizer
//
//  Created by Samuel Vieira on 15/09/21.
//

import SwiftUI

@main
struct MemorizerApp: App {
    let game = EmojisMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(game: game)
        }
    }
}
