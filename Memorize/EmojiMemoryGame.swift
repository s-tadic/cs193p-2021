//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Stefan Tadic on 8/16/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {

    @Published private var model: MemoryGame<String> = createMemoryGame()

    static func createMemoryGame(theme: EmojiMemoryGameTheme = .random) -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            theme.emojis.shuffled()[pairIndex]
        }
    }

    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }

    // MARK: - Intent(s)

    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }

    func startNewGame() {
        model = Self.createMemoryGame()
    }
}
