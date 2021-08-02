//
//  ContentView.swift
//  rating
//
//  Created by Amber Jen on 2021/8/2.
//

import SwiftUI

struct ContentView: View {
    
    @State var rating: Int = 0
    @State var showPopup: Bool = false
    @State var rated: Bool = false
    
    
    var body: some View {
        
        ZStack(alignment: .trailing) {
            
            Color.black
                .ignoresSafeArea()
            
            // Background Image
            ScrollView(.vertical) {
                VStack (alignment: .leading, spacing: 0) {
                    Image("bg3")
                        .resizable()
                        .scaledToFit()
                        .overlay(

                            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.3), Color.black.opacity(1)]), startPoint: .top, endPoint: .bottom)

                        )
                    
                    VStack(alignment: .leading) {
                        Text("The Incredibles")
                            .font(.system(size: 32))
                            .fontWeight(.bold)
                            .padding(.bottom, 2)
                        
                        Text("2004 ‧ Family/Comedy ‧ 1h 56m")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.6))
                            .fontWeight(.medium)
                            .padding(.bottom, 8)
                        
                        HStack (spacing: 1) {
                            
                            if(rating > 0 && rated) {
                                HStack(alignment: .center, spacing: 4)  {
                                    
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text("\(rating)")
                                        .fontWeight(.semibold)
                                    
                                }
                            } else {
                            
                                Image(systemName: "star")
                                
                                Button(action: {
                                    withAnimation {
                                        showPopup.toggle()
                                    }
                                }, label: {
                                    Text("Rate this movie")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(#colorLiteral(red: 0.4973158836, green: 0.4532933235, blue: 1, alpha: 1)))
                                        .padding(.leading, 4)
                                })
                                .overlay(
                                    VStack(spacing: 0) {
                                        
                                        Text("\(rating)")
                                            .font(.system(size: 48))
                                            .fontWeight(.light)
                                            .padding(.bottom, 12)
                                        
                                        HStack(alignment: .center, spacing: 4) {
                                            
                                            ForEach(1..<6) { index in
                                               Image(systemName: "star.fill")
                                                .foregroundColor(rating >= index ? Color.yellow : Color.gray)
                                                .onTapGesture {
                                                    withAnimation(.easeOut) {
                                                        rating = index
                                                    }
                                                  
                                                }
                                                    
                                            }
                                        } // HStack
                                        .padding(.bottom, 24)
                                    
                                        
                                        
                                        Button(action: {
                                            rated = true
                                        }, label: {
                                            Text("Rate")
                                                .fontWeight(.semibold)
                                                .padding(.horizontal, 24)
                                                .padding(.vertical, 10)
                                                .frame(maxWidth: .infinity)
                                                .background(Color(#colorLiteral(red: 0.4973158836, green: 0.4532933235, blue: 1, alpha: 1)))
                                                .foregroundColor(.white)
                                                .cornerRadius(7)
                                                .padding(.bottom, 24)
     
                                        })
                                        
                                    }
                                    .font(.title3)
                                    .padding(.horizontal, 40)
                                    .padding(.vertical, 28)
                                    .background(Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)))
                                    .cornerRadius(7)
                                    .shadow(color: .black.opacity(0.5), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
                                    .offset(x: 56, y: -64)
                                    .opacity(showPopup ? 1 : 0)
                                    
                                )
                            
                            }
                            
                            
                        }
                        .foregroundColor(.white.opacity(0.6))
                        .padding(.bottom, 32)
                        
                        
                        Text("Plot Summary")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.bottom, 8)
                            
                        
                        Text("Forced to adopt a civilian identity and stuck in a white-collar job, Mr Incredible itches to get back into action. When he is lured into a trap by the evil Syndrome, his family contrives to save him.")
                            .frame(height: 100)
                            .padding(.bottom, 32)
                            .padding(.trailing, 24)
                            .foregroundColor(.white.opacity(0.7))
                        
                        Text("Characters")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.bottom, 16)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 24) {
                                
                                ForEach(characters) { role in
                                    VStack {
                                        Image(role.thumbnail)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 72, height: 72)
                                        Text(role.name)
                                            .foregroundColor(.white.opacity(0.7))
                                    }
                                }
                                
                                
                            }
                        }
    
                    
                    }
                    .padding(.leading, 24)
                    .padding(.bottom, 32)
                    .padding(.top, -64)
                    .foregroundColor(.white)
                }
            }.ignoresSafeArea()
            
            
        
        }
    }
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
