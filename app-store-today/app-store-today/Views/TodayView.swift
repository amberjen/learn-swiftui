//
//  TodayView.swift
//  app-store-today
//
//  Created by Amber Jen on 2021/7/20.
//

import SwiftUI

struct TodayView: View {
    
    @Namespace private var cardAnimation
    @State private var showDetailed: Bool = false
    
    @State var selectedCard: CardModel = cards[0]
    
    var body: some View {
        
        VStack {
            
            
            if showDetailed {
                
                // CardDetail
                ZStack(alignment: .topTrailing) {

                    VStack {
                        ScrollView {

                            CardItemView(card: selectedCard, isDetailView: true)
                                .matchedGeometryEffect(
                                    id: selectedCard.id,
                                    in: cardAnimation
                                )
                           
                            
                            // App List
                            ForEach(selectedCard.appList, id: \.self) { app in
                                
                                VStack{
                                    
                                    // App Item
                                    HStack {
                                        // Cover
                                        Image(app.cover)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 64, height: 64)
                                        
                                        // Content
                                        HStack {
                                            VStack(alignment: .leading) {
                                                Text(app.title)
                                                    .font(.title2)
                                                
                                                
                                                Text(app.subtitle)
                                                    .foregroundColor(.gray)
                                            }
                                            
                                            Spacer()
                                            
                                            Button(action: {
                                                
                                            }, label: {
                                                Text(app.btnText.uppercased())
                                                    .font(.title3)
                                                    .fontWeight(.bold)
                                                    .padding(.vertical, 7)
                                                    .padding(.horizontal, 20)
                                                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                                                    .cornerRadius(25)
                                            })
                                        }
                                        .frame(maxWidth: .infinity)
                                        
                                    } // END: App Item
                                    
                                } // END: VStack
                                .padding(.horizontal, 16)
                                
                            } // END: ForEach


                        }
                        
                        
                        
                    } // END: VStack

                    CloseButton()
                        .onTapGesture {
                            showDetailed.toggle()
                        }
                        .padding(.top, 24)
                        .padding(.trailing, 16)

                } // END: ZStack
                .ignoresSafeArea()
                
                
                
            } else {
                
                // CardListView
                ScrollView {
                    
                    HStack {
                        
                        VStack(alignment: .leading) {
                            Text("Tuesday 20 July".uppercased())
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                                .padding(.bottom, 2)
                            
                            HStack {
                                Text("Today")
                                    .font(.system(size: 48))
                                    .fontWeight(.bold)
                                
                                Spacer()
                                    
                                Image(systemName: "person.crop.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(.pink)
                            }
                        }

                        
                    }
                    .padding()
                    
                
                    ForEach(cards) { card in
                        
                        CardItemView(card: card, isDetailView: false)
                            .matchedGeometryEffect(
                                id: card.id,
                                in: cardAnimation)
                            .onTapGesture {
                                withAnimation {
                                    selectedCard = card
                                    showDetailed.toggle()
                                }
                        }
                            
                        
                    
                    }
                
                } // END: CardListView
                
                
            }
            
            
            
        } // END: VStack
        
        
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
