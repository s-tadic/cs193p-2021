//
//  EmojiMemoryGameTheme.swift
//  Memorize
//
//  Created by Stefan Tadic on 9/8/21.
//

import SwiftUI

struct EmojiMemoryGameTheme {
    var name: String
    var emojis: [String]
    var numberOfPairs: Int
    var color: String
}

extension EmojiMemoryGameTheme {
    static var allThemes: [EmojiMemoryGameTheme] {
        [travel, food, sport, flag, symbol, object]
    }

    static var travel: Self {
        .init(
            name: "travel",
            emojis: [
                "🚜", "🚁", "🚀", "🚅",
                "🚲", "🚎", "🚍", "🛵",
                "🚃", "🚤", "🛸", "🏎",
                "🚛", "🚟", "🚘", "🚒",
                "✈️", "🛳", "⛵️", "🚂",
                "🚔", "🛴", "🚇", "🛶"
            ],
            numberOfPairs: 8,
            color: "blue"
        )
    }

    static var food: Self {
        .init(
            name: "food",
            emojis: [
                "🥑", "🍆", "🍅", "🍋",
                "🍍", "🥥", "🍠", "🧀",
                "🥝", "🥕", "🥦", "🌶",
                "🥩", "🍔", "🥐", "🥗",
                "🥨", "🌮", "🍝", "🍳"
            ],
            numberOfPairs: 10,
            color: "orange"
        )
    }

    static var sport: Self {
        .init(
            name: "sport",
            emojis: [
                "⛷", "⛹🏼‍♀️", "🏋🏿", "🥋",
                "🤾🏽‍♀️", "🏌🏻‍♂️", "🪂", "⛸",
                "🏄🏻‍♀️", "🏂", "🏊🏾", "🏸",
                "🏒", "🏇🏻", "⚽️", "🎾",
                "🏐", "🥎", "🏈", "⚽️"
            ],
            numberOfPairs: 12,
            color: "red"
        )
    }

    static var flag: Self {
        .init(
            name: "flag",
            emojis: [
                "🇦🇱", "🇩🇿", "🇦🇺", "🇧🇪",
                "🇧🇯", "🇧🇬", "🇦🇶", "🇰🇾",
                "🇹🇩", "🇨🇮", "🇪🇬", "🇬🇪",
                "🇯🇵", "🇲🇨", "🇲🇰", "🏴󠁧󠁢󠁥󠁮󠁧󠁿",
                "🏴󠁧󠁢󠁳󠁣󠁴󠁿", "🇸🇪", "🇹🇷", "🇳🇴"],
            numberOfPairs: 14,
            color: "green"
        )
    }

    static var symbol: Self {
        .init(
            name: "symbol",
            emojis: [
                "⌘", "⏂", "⍺", "→",
                "⇪", "◁", "✝︎", "⚦",
                "☽", "ℳ", "®", "™",
                "№", "☀︎", "⚂", "♋︎",
                "⚒︎", "☯︎", "☉", "✂︎"],
            numberOfPairs: 16,
            color: "green"
        )
    }

    static var object: Self {
        .init(
            name: "object",
            emojis: [
                "🎥", "🎙", "☎️", "⏰",
                "🧯", "💸", "⚖️", "📪",
                "🌡", "🗝", "🎈", "✏️",
                "📚", "🔎", "🔨", "🔧",
                "⌛️", "🕹", "💻", "📼"],
            numberOfPairs: 18,
            color: "yellow"
        )
    }
}
