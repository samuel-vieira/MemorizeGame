//
//  EmojisMemoryGame.swift
//  Memorizer
//
//  Created by Samuel Vieira on 26/10/21.
//

import SwiftUI

class EmojisMemoryGame {
    private(set) var model: MemoryGame<String>
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
