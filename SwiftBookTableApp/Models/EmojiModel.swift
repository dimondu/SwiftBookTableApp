//
//  EmojiModel.swift
//  SwiftBookTableApp
//
//  Created by Дмитрий Дуров on 09.08.2022.
//

struct Emoji {
    let emoji: String
    let name: String
    let description: String
    var isFavorite: Bool
    
    static func getEmoji() -> [Emoji] {
        [
            Emoji(emoji: "♥️", name: "Love", description: "Love is passion", isFavorite: false),
            Emoji(emoji: "🦷", name: "Tooth", description: "You can give a hint someone", isFavorite: false),
            Emoji(emoji: "🔥", name: "Fire", description: "You will burn in my heart", isFavorite: false)
        ]
    }
}


