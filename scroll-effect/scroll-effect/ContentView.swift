//
//  ContentView.swift
//  scroll-effect
//
//  Created by Amber Jen on 2021/7/21.
//

import SwiftUI
import WrappingHStack

struct ContentView: View {
    
    let black: Color = Color("PrimaryDark")
    
    var body: some View {
        
        ZStack {
            
            Color(#colorLiteral(red: 0.9269279838, green: 0.9417040944, blue: 0.9412813783, alpha: 1))
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                VStack(alignment: .leading) {
                    
                    // Main Title
                    Text("Emojipedia")
                        .font(.custom("Poppins-Bold", size: 36))
                        .foregroundColor(black)
                        .padding(.bottom, 12)
                    
                    // Fake tabs
                    WrappingHStack(emojiTypes) { type in
                        Text(type.title)
                            .font(.custom("Poppins-Regular", size: 17))
                            .foregroundColor(black)
                            .frame(height: 32)
                            .padding(.horizontal, 12)
                            .background(Color.white)
                            .padding(.vertical, 5)
                            .cornerRadius(22)
                    }
                
                    
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                
                
                // ------------------------------------------------
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    
                    HStack(alignment: .center, spacing: 300) {
                        ForEach (emojiData) { emoji in
                            
                            GeometryReader { geometry in
                                
                                // Card
                               CardView(emoji: emoji)
                                .rotation3DEffect(
                                    Angle(degrees: (Double(geometry.frame(in: .global).minX) - 20) /  -20),
                                    axis: (x: 0.0, y: 1.0, z: 0.0),
                                    anchor: .center,
                                    perspective: 1.0
                                )
                                
                            }
                            
                            
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 36)
                    .padding(.trailing, 300)
                    
                    
                   
                    
                    
                    
                    
                } // END: ScrollView)
                
                Spacer()
                
            } // END: VStack
            
            
        } // END: ZStack
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
