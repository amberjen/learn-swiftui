//
//  RingView.swift
//  watchos-basic WatchKit Extension
//
//  Created by Amber Jen on 2021/8/12.
//

import SwiftUI

struct RingView: View {
    var body: some View {
        VStack {
            HeaderView(title: "Activity",
                       subtitle: "ring",
                       color: .orange)
            
            // Ring
            ZStack {
                Circle()
                    .stroke(lineWidth: 20)
                    .fill(Color(#colorLiteral(red: 0.08234197646, green: 0.08236017078, blue: 0.08233625442, alpha: 1)))
                
                Circle()
                    .trim(from: 0.3, to: 1.0)
                    .stroke(Color(.orange), style: StrokeStyle(lineWidth: 16, lineCap: .round, lineJoin: .round))
                    .rotationEffect(.degrees(180))
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 1.0, y: 0, z: 0.0)
                    )
            }
            .frame(width: 130, height: 130)
            .rotationEffect(.degrees(90), anchor: .center)
            .padding(.top, 15)
            
            
        } // END: VStack
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
