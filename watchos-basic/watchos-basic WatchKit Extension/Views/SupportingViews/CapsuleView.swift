//
//  CapsuleView.swift
//  watchos-basic WatchKit Extension
//
//  Created by Amber Jen on 2021/8/12.
//

import SwiftUI

struct CapsuleView: View {
    
    let value: Int
    let day: String
    
    var body: some View {
        
        HStack (alignment: .bottom, spacing: 2) {
            VStack {
                VStack {
                    Text("\(value)")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                    Capsule()
                        .frame(width: 10, height: CGFloat(value))
                        .foregroundColor(.green)
                }
                
                Text(day.uppercased())
                    .font(.system(size: 12))
                    .fontWeight(.black)
                    .padding(.top, 0)
                
                
            }
        }
        .padding(.top, 15) // END: HStack
        
    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleView(value: 75, day: "s")
    }
}
