//
//  EmojiDataModel.swift
//  scroll-effect
//
//  Created by Amber Jen on 2021/7/21.
//

import Foundation

struct EmojiDataModel: Identifiable {
    
    let id: String = UUID().uuidString
    let emoji: String
    let title: String
    let description: String
    let img: String
}

let emojiData = [
    EmojiDataModel(
        emoji: "😀",
        title: "Grinning Face",
        description: "A yellow face with simple, open eyes and a broad, open smile, showing upper teeth and tongue on some platforms. Often conveys general pleasure and good cheer or humor.",
        img: "01"),
    EmojiDataModel(
        emoji: "🥳",
        title: "Partying Face",
        description: "A yellow face with a party hat blowing a party horn as confetti floats around its head. Used for celebrating joyous occasions and enjoying good times more generally.",
        img: "02"),
    EmojiDataModel(
        emoji: "🥊",
        title: "Boxing Glove",
        description: "A padded boxing glove, used in the sport of boxing. Usually red.",
        img: "03"),
    EmojiDataModel(
        emoji: "🩴",
        title: "Thong Sandal",
        description: "A single flip flop or thong sandal. Often worn to the beach and/or in warm weather. Can be used to talk about sandals, the beach, or warm weather in general.",
        img: "07"),
    EmojiDataModel(
        emoji: "🌵",
        title: "Cactus",
        description: "A cactus, a spiky plant that grows in very dry regions. Depicted as a light-green saguaro cactus with two side arms covered in spines.",
        img: "05"),
    EmojiDataModel(
        emoji: "💋",
        title: "Kiss Mark",
        description: "The mark left after a firm kiss is placed with bright lipstick. Used in place of ‘xxx’ (kisses), or to send a kiss to someone. More seductive than the kiss emoji.",
        img: "06"),
    EmojiDataModel(
        emoji: "🍹",
        title: "Tropical Drink",
        description: "A sunset-orange-colored tropical beverage in a stemmed glass, as a rum punch or mai tai. Served with a straw and fruit garnish.",
        img: "04")
]
