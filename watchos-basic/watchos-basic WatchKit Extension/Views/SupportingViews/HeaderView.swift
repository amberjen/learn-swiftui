//
//  HeaderView.swift
//  watchos-basic WatchKit Extension
//
//  Created by Amber Jen on 2021/8/12.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let color: Color
    
    var body: some View {
        // Header
        HStack (spacing: 0) {
            Text(title.uppercased())
                .fontWeight(.heavy)
            Text(subtitle.uppercased())
                .fontWeight(.thin)
        }
        .foregroundColor(color)
        .padding(.top, 10)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "bar", subtitle: "chart", color: .green )
    }
}
