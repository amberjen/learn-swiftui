//
//  AppModel.swift
//  app-store-today
//
//  Created by Amber Jen on 2021/7/20.
//

import Foundation

struct AppModel: Identifiable, Hashable {
    
    let id: String = UUID().uuidString
    let title: String
    let subtitle: String
    let cover: String
    let btnText: String
    
}
