//
//  NotificationModifier.swift
//  notification-banner
//
//  Created by Amber Jen on 2021/7/22.
//

import SwiftUI

struct NotificationModifier: ViewModifier {
    
    struct NotificationData {
        var icon: NotificationType
        var title: String
        var description: String
        var type: NotificationType
    }
    
    @Binding var data: NotificationData
    @Binding var showNotification: Bool
    
    enum NotificationType {
        case Success
        case Info
        case Error
        
        var bgColor: Color {
            switch self {
            case .Success:
                return Color(#colorLiteral(red: 0.2488149405, green: 0.6843003631, blue: 0.3527854383, alpha: 1))
            case .Info:
                return Color(#colorLiteral(red: 0.3661607504, green: 0.4900977015, blue: 0.8650628924, alpha: 1))
            case .Error:
                return Color(#colorLiteral(red: 0.8225079179, green: 0.3438739777, blue: 0.503457725, alpha: 1))
            }
        }
        
        var symbol: String {
            switch self {
            case .Success:
                return "icon-success"
            case .Info:
                return "icon-info"
            case .Error:
                return "icon-error"
            }
        }
    }
    
    func body(content: Content) -> some View {
        
        ZStack {
            
            content
            
            if showNotification {
                
                VStack() {
                    
                    // Notification Banner
                    HStack(alignment: .top) {
                        
                        Image(data.icon.symbol)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 44, height: 44)
                            .padding(.trailing, 6)
                        
                        VStack(alignment: .leading) {
                            
                            Text(data.title)
                                .font(.headline)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .tracking(-0.15)
                                .padding(.bottom, 2)
                            
                            Text(data.description)
                                .font(.callout)
                                .fontWeight(.regular)
                                .tracking(-0.15)
                                .lineSpacing(2)
                                .foregroundColor(.white.opacity(0.85))
                        }
                        
                    } // END
                    .padding(.vertical, 16)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: .infinity)
                    .background(data.type.bgColor)
                    .cornerRadius(7)
                    
                    
                    Spacer()
                    
                }
                .padding(16)
                .animation(.easeInOut)
                .transition(AnyTransition.move(edge: .top).combined(with: .opacity))
                .onTapGesture {
                    withAnimation {
                        self.showNotification = false
                    }
                }
                .onAppear(perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            self.showNotification = false
                        }
                    }
                })
                
                
            }
            
            
        }
        
    }
}


extension View {
    func notification(data: Binding<NotificationModifier.NotificationData>, showNotification: Binding<Bool>) -> some View {
        self.modifier(NotificationModifier(data: data, showNotification: showNotification))
    }
}

struct NotificationModifier_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
           Text("")
        }
    }
}
