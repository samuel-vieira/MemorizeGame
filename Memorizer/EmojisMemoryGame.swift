//
//  EmojisMemoryGame.swift
//  Memorizer
//
//  Created by Samuel Vieira on 26/10/21.
//

import SwiftUI

class EmojisMemoryGame {
    static let emojis: [String] = ["🚂", "🚜", "🛵", "✈️", "🚗", "🚕", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🏍", "🚍", "🛩", "🚇", "🛸"]
    
    static func createCardContent() -> MemoryGame<String> {
        MemoryGame(numbersOfPairsOfCards: 6) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private(set) var model: MemoryGame<String> = createCardContent()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
