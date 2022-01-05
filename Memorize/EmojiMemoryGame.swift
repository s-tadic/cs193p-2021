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
        let pairs = Array(theme.emojis.shuffled().prefix(theme.numberOfPairs))
        return MemoryGame<String>(numberOfPairsOfCards: pairs.count) { pairIndex in
            return String(pairs[pairIndex])
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
