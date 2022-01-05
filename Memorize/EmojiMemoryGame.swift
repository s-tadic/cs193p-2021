//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Stefan Tadic on 8/16/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {

    private var theme: EmojiMemoryGameTheme

    @Published private var model: MemoryGame<String>

    init() {
        theme = .random
        model = Self.createMemoryGame(theme: theme)
    }

    static func createMemoryGame(theme: EmojiMemoryGameTheme) -> MemoryGame<String> {
        let pairs = Array(theme.emojis.shuffled().prefix(theme.numberOfPairs))
        return MemoryGame<String>(numberOfPairsOfCards: pairs.count) { pairIndex in
            return String(pairs[pairIndex])
        }
    }

    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }

    var themeName: String {
        theme.name
    }

    // MARK: - Intent(s)

    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }

    func startNewGame() {
        let newTheme = EmojiMemoryGameTheme.random
        theme = newTheme
        model = Self.createMemoryGame(theme: newTheme)
    }
}
