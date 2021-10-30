//
//  MemorizeGame.swift
//  Memorizer
//
//  Created by Samuel Vieira on 26/10/21.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    init(numbersOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numbersOfPairsOfCards{
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
    }
    
    mutating func choose(_ card: Card) {
        let indexChose = index(of: card)
        cards[indexChose].isFacedUp.toggle()
        print("Hello")
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if (cards[index].id == card.id) {
                return index
            }
        }
        return 0
    }
    
    struct Card: Identifiable {
        var id: Int
        var isFacedUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
