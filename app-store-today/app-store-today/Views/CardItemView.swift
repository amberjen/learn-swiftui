//
//  CardItemView.swift
//  app-store-today
//
//  Created by Amber Jen on 2021/7/20.
//

import SwiftUI

struct CardItemView: View {
    
    let card: CardModel
    
    @State var isDetailView: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            VStack(alignment: .leading, spacing: 0) {
                Text(card.tagline.uppercased())
                    .font(.title3)
                    .foregroundColor(.gray)
                    .fontWeight(.semibold)
                    .padding(.bottom, 10)
                
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .padding(.vertical, 30)
            .padding(.horizontal, 25)
            
            Image(card.cover)
                .resizable()
                .scaledToFit()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(isDetailView ?  0 : 21)
        .shadow(
            color: .black.opacity(0.25),
            radius: isDetailView ? 0 : 24,
            x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/,
            y: isDetailView ? 0 : 8)
        .padding(.horizontal, isDetailView ? 0 : 16)
        .padding(.top, isDetailView ? 32 : 12)
        
    }
}

struct CardItemView_Previews: PreviewProvider {
    static var previews: some View {
        CardItemView(card: cards[1], isDetailView: true)
    }
}
