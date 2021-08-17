//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Stefan Tadic on 8/4/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()

    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
