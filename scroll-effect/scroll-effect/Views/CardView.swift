//
//  CardView.swift
//  scroll-effect
//
//  Created by Amber Jen on 2021/7/21.
//

import SwiftUI

struct CardView: View {
    
    let black: Color = Color("PrimaryDark")
    let emoji: EmojiDataModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            // Card Top
            VStack {
                Text(emoji.emoji)
                    .font(.system(size: 48))
            }
            .padding(.bottom, 12)
            
            // Card Bottom
            VStack(alignment: .leading, spacing: 0) {
                Text(emoji.title)
                    .font(.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(black)
                
                Divider()
                    .padding(.top, 8)
                    .padding(.bottom, 16)
                
                Text(emoji.description)
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(black.opacity(0.8))
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 16)
            .background(Color.white)
            .cornerRadius(7)
            
        } // END: Card
        .frame(width: 220, height: 280)
        .padding(.horizontal, 32)
        .padding(.vertical, 24)
        .background(
            
            Image(emoji.img)
        
        )
        .cornerRadius(15)
        .shadow(color: black.opacity(0.3), radius: 12, x: 0.0, y: 4)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(emoji: emojiData[0])
    }
}
