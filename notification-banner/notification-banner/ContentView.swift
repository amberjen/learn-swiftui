//
//  ContentView.swift
//  notification-banner
//
//  Created by Amber Jen on 2021/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var showNotification: Bool = true
    @State var notificationData: NotificationModifier.NotificationData = NotificationModifier.NotificationData(
        icon: .Success,
        title: "Card Successfully Added",
        description: "Start exploring the app or connect with your freiends.",
        type: .Success)
    
    var body: some View {
        
        ZStack {
            
            Color(#colorLiteral(red: 0.06022190303, green: 0.08510565013, blue: 0.1541205049, alpha: 1))
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                HStack(spacing: 12) {
                    
                    Button(action: {
                        self.notificationData.type = .Success
                        self.notificationData.icon = .Success
                        self.notificationData.title = "Card Successfully Added"
                        self.notificationData.description = "Start exploring the app or connect with your freiends."
                        self.showNotification = true
                    }, label: {
                        Text("Success")
                            .padding(.vertical, 8)
                            .frame(width: 110)
                            .background(Color.white)
                            .cornerRadius(7)
                    })
                    
                    Button(action: {
                        self.notificationData.type = .Info
                        self.notificationData.icon = .Info
                        self.notificationData.title = "Quick Tips"
                        self.notificationData.description = "Do you know there's a shortcut for adding new item? Tap to learn more."
                        self.showNotification = true
                    }, label: {
                        Text("Info")
                            .padding(.vertical, 8)
                            .frame(width: 110)
                            .background(Color.white)
                            .cornerRadius(7)
                            .padding(.vertical, 6)
                    })
                    
                    Button(action: {
                        self.notificationData.type = .Error
                        self.notificationData.icon = .Error
                        self.notificationData.title = "Oops! Something Went Wrong"
                        self.notificationData.description = "Please come back again in one hour or contact Support for assistance."
                        self.showNotification = true
                    }, label: {
                        Text("Error")
                            .padding(.vertical, 8)
                            .frame(width: 110)
                            .background(Color.white)
                            .cornerRadius(7)
                    })
                    
                    
                }
                .foregroundColor(Color(#colorLiteral(red: 0.06022190303, green: 0.08510565013, blue: 0.1541205049, alpha: 1)))
                .font(.title2)
                
            }.notification(data: $notificationData, showNotification: $showNotification)
            
            
        }
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
