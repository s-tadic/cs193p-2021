//
//  ContentView.swift
//  Memorize
//
//  Created by Stefan Tadic on 8/4/21.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = [String]()

    let travelEmojis = [
        "🚜", "🚁", "🚀", "🚅",
        "🚲", "🚎", "🚍", "🛵",
        "🚃", "🚤", "🛸", "🏎",
        "🚛", "🚟", "🚘", "🚒",
        "✈️", "🛳", "⛵️", "🚂",
        "🚔", "🛴", "🚇", "🛶"
    ]

    let foodEmojis = [
        "🥑", "🍆", "🍅", "🍋",
        "🍍", "🥥", "🍠", "🧀",
        "🥝", "🥕", "🥦", "🌶",
        "🥩", "🍔", "🥐", "🥗",
        "🥨", "🌮", "🍝", "🍳"
    ]

    let sportEmojis = [
        "⛷", "⛹🏼‍♀️", "🏋🏿", "🥋",
        "🤾🏽‍♀️", "🏌🏻‍♂️", "🪂", "⛸",
        "🏄🏻‍♀️", "🏂", "🏊🏾", "🏸",
        "🏒", "🏇🏻", "⚽️", "🎾"
    ]

    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.largeTitle)
                .padding(.bottom)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis, id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                Spacer()
                travel
                Spacer()
                food
                Spacer()
                sport
                Spacer()
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
    }

    var travel: some View {
        Button(action: {
            emojis = travelEmojis.shuffled()
        }, label: {
            VStack {
                Image(systemName: "airplane")
                    .font(.largeTitle)
                Text("Travel")
                    .font(.subheadline)
            }
        })
    }

    var food: some View {
        Button(action: {
            emojis = foodEmojis.shuffled()
        }, label: {
            VStack {
                Image(systemName: "tray.fill")
                    .font(.largeTitle)
                Text("Food")
                    .font(.subheadline)
            }
        })
    }

    var sport: some View {
        Button(action: {
            emojis = sportEmojis.shuffled()
        }, label: {
            VStack {
                Image(systemName: "sportscourt.fill")
                    .font(.largeTitle)
                Text("Sport")
                    .font(.subheadline)
            }
        })
    }

    struct CardView: View {
        var content: String
        @State var isFaceUp: Bool = true

        var body: some View {
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                if isFaceUp {
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 3)
                    Text(content).font(.largeTitle)
                } else {
                    shape.fill()
                }
            }
            .onTapGesture {
                isFaceUp = !isFaceUp
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
