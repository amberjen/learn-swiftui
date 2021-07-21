//
//  EmojiTypesModel.swift
//  scroll-effect
//
//  Created by Amber Jen on 2021/7/21.
//

import Foundation

struct EmojiTypesModel: Identifiable {
    
    let id: String = UUID().uuidString
    let title: String

}

let emojiTypes = [
    EmojiTypesModel(title: "😍 Smiley & People"),
    EmojiTypesModel(title: "🥕 Food & Drink"),
    EmojiTypesModel(title: "🏖 Travel & Places"),
    EmojiTypesModel(title: "🎱 Activity"),
    EmojiTypesModel(title: "🦄 Animals & Nature"),
    EmojiTypesModel(title: "🕹 Objects"),
    EmojiTypesModel(title: "💜 Symbols"),
//    EmojiTypesModel(title: "🚩 Flags")
]
