//
//  ContentView.swift
//  Memorizer
//
//  Created by Samuel Vieira on 15/09/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var game: EmojisMemoryGame
    
    var body: some View {
        VStack {
            // Group of Cards
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(game.cards) { card in
                        CardView(card: card)
                            .aspectRatio(2/3, contentMode: .fit)
                            .onTapGesture {
                                game.choose(card)
                            }
                    }
                }
            }
            .foregroundColor(.red)
        }
        .padding(.horizontal)
    }
}

// Card Component
struct CardView: View {
    let card: MemoryGame<String>.Card
    
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if card.isFacedUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    let teste = EmojisMemoryGame()
//
//    static var previews: some View {
//        ContentView(game: teste)
//    }
//}
