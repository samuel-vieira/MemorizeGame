//
//  EmojisMemoryGame.swift
//  Memorizer
//
//  Created by Samuel Vieira on 26/10/21.
//

import SwiftUI

class EmojisMemoryGame: ObservableObject {
    static let emojis: [String] = ["🚂", "🚜", "🛵", "✈️", "🚗", "🚕", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🏍", "🚍", "🛩", "🚇", "🛸"]
    
    static func createCardContent() -> MemoryGame<String> {
        MemoryGame(numbersOfPairsOfCards: 6) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createCardContent()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
