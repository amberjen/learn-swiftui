//
//  CharactersModel.swift
//  rating
//
//  Created by Amber Jen on 2021/8/2.
//

import Foundation


struct  CharactersModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let thumbnail: String
}


let characters = [
    CharactersModel(name: "Bob", thumbnail: "bob"),
    CharactersModel(name: "Jack-Jack", thumbnail: "jackjack"),
    CharactersModel(name: "Elasticgirl", thumbnail: "elasticgirl"),
    CharactersModel(name: "Dash", thumbnail: "dash"),
]
