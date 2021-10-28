//
//  ContentView.swift
//  Memorizer
//
//  Created by Samuel Vieira on 15/09/21.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["🚂", "🚜", "🛵", "✈️", "🚗", "🚕", "🚌", "🚎", "🏎", "🚓", "🚑", "🚒", "🚐", "🛻", "🚚", "🚛", "🏍", "🚍", "🛩", "🚇", "🛸"]
    @State var emojisCount: Int = 6
    
    var body: some View {
        VStack {
            // Group of Cards
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(emojis[0..<emojisCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
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
    @State var isFacedUp: Bool = true
    var content: String
    
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFacedUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3.0)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }.onTapGesture {
            isFacedUp = !isFacedUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
