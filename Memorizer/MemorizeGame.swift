//
//  MemorizeGame.swift
//  Memorizer
//
//  Created by Samuel Vieira on 26/10/21.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFacedUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
