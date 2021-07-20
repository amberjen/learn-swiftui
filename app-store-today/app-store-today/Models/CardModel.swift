//
//  CardModel.swift
//  app-store-today
//
//  Created by Amber Jen on 2021/7/20.
//

import Foundation


struct CardModel: Identifiable {
    
    let id: String = UUID().uuidString
    let tagline: String
    let title: String
    let cover: String
    let appList: [AppModel]

}


let cards = [
    CardModel(tagline: "Get Creative", title: "Discover Art in AR", cover: "art-ar", appList: [
        AppModel(
            title: "David Bowie is",
            subtitle: "The AR Exibition",
            cover: "david-bowie",
            btnText: "NT330.00"),
        AppModel(
            title: "Rembrandt Reality",
            subtitle: "Education",
            cover: "rembrandt",
            btnText: "Get"),
        AppModel(
            title: "Boulevard AR",
            subtitle: "Art where you are",
            cover: "blvd",
            btnText: "Get"),
        AppModel(
            title: "Civilisations AR",
            subtitle: "Discover History's Treasure",
            cover: "bbc",
            btnText: "Get")
    ]),
    CardModel(tagline: "DIY", title: "Design Your\nDream Home", cover: "dream-home", appList: [
        AppModel(
            title: "Houzz Home Design\n& Renovation",
            subtitle: "Interior Decor Ideas",
            cover: "houzz",
            btnText: "Get"
        ),
        AppModel(
            title: "IKEA Place",
            subtitle: "Augumented Reality Furnishing",
            cover: "ikea",
            btnText: "Get"
        ),
        AppModel(
            title: "Pinterest:\nLifestyle Ideas",
            subtitle: "Home design, DIY, recipe ideas",
            cover: "pinterest",
            btnText: "Open"
        ),
        AppModel(
            title: "Etsy: Custom &\nCreative Goods",
            subtitle: "Home design, DIY, recipe ideas",
            cover: "etsy",
            btnText: "Get"
        ),
        AppModel(
            title: "eBay Shopping: Buy,\nsell, save",
            subtitle: "Deals on gifts & top brands",
            cover: "ebay",
            btnText: "Get"
        ),
        AppModel(
            title: "Zara Home",
            subtitle: "Shopping",
            cover: "zara",
            btnText: "Get"
        ),
        AppModel(
            title: "Planner 5D - Design\nYour Room",
            subtitle: "Plan & Design Your Dream Home",
            cover: "5d",
            btnText: "Get"
        )
    ])
]
