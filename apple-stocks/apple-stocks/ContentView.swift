//
//  ContentView.swift
//  apple-stocks
//
//  Created by Amber Jen on 2020/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = true
    
    var body: some View {
        
        ZStack {
            
            BackgroundView(isNight: $isNight)
            
            VStack(alignment: .leading) {
                
                VStack(alignment: .leading) {
                    HeadingTextView(text: "Welcome to", textColor: isNight ? .white : .black)
                    HeadingTextView(text: "Stocks", textColor: isNight ? Color(#colorLiteral(red: 0.2509803922, green: 0.8705882353, blue: 0.831372549, alpha: 1)) : Color(#colorLiteral(red: 0.02352941176, green: 0.8117647059, blue: 0.7647058824, alpha: 1)))
                }.padding(.leading, 15)
                .padding(.top, 30)
                .padding(.bottom, 30)
                
                
                VStack(alignment: .leading) {
                    
                    FeatureView(imageName: "sparkles",
                                title: "All New Design",
                                description: "Easily view stock quotes, interactive charts, and top news.",
                                isNight: $isNight)
                    
                    FeatureView(imageName: "bookmark.fill",
                                title: "Business News",
                                description: "Read stories provided by Yahoo right in the app.",
                                isNight: $isNight)
                    
                    FeatureView(imageName: "location.circle.fill",
                                title: "iPhone, iPad, and Mac",
                                description: "User iCoud to view stocks and news on all your devices.",
                                isNight: $isNight)
                }
                
                Spacer()
                
                VStack(alignment: .center) {
                    Button() {
                        isNight.toggle()
                    } label: {
                        Text("Switch Theme")
                            .frame(width: 335, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(isNight ? Color(#colorLiteral(red: 0.2509803922, green: 0.8705882353, blue: 0.831372549, alpha: 1)) : Color(#colorLiteral(red: 0.02352941176, green: 0.8117647059, blue: 0.7647058824, alpha: 1)))
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .bold, design: .default))
                            .cornerRadius(8)
                    }
                    
                    Text("About Stocks & Privacy...")
                        .font(.system(size: 20, weight: .regular, design: .default))
                        .foregroundColor(isNight ? Color(#colorLiteral(red: 0.2509803922, green: 0.8705882353, blue: 0.831372549, alpha: 1)) : Color(#colorLiteral(red: 0.02352941176, green: 0.8117647059, blue: 0.7647058824, alpha: 1)))
                        .padding(10)
                    
                }.frame(minWidth: 0, maxWidth: .infinity)
                
            }.padding(.all, 20)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)) : .white, isNight ? Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)) : .white]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct HeadingTextView: View {
    var text: String
    var textColor: Color
    
    var body: some View {
        Text(text)
            .font(.system(size: 43, weight: .black, design: .default))
            .foregroundColor(textColor)
    }
}

struct FeatureView: View {
    
    var imageName: String
    var title: String
    var description: String
    
    @Binding var isNight: Bool
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 45, height: 45, alignment: .top)
                .padding(.horizontal, 10)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .padding(.bottom, 3)
                    .foregroundColor(isNight ? .white : .black)
                Text(description)
                    .font(.system(size: 17, weight: .light, design: .default))
                    .foregroundColor(isNight ? .white : .black)
            }
            
        }.padding(.bottom, 20)
    }
}
