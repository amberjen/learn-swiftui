//
//  BarChartView.swift
//  watchos-basic WatchKit Extension
//
//  Created by Amber Jen on 2021/8/12.
//

import SwiftUI

struct BarChartView: View {
    var body: some View {
        
        VStack (spacing: 0) {
            
            HeaderView(title: "bar", subtitle: "chart", color: .green)
            
            HStack (alignment: .bottom) {
                CapsuleView(value: 75, day: "s")
                CapsuleView(value: 100, day: "m")
                CapsuleView(value: 50, day: "t")
                CapsuleView(value: 25, day: "w")
                CapsuleView(value: 40, day: "t")
                CapsuleView(value: 35, day: "f")
                CapsuleView(value: 5, day: "s")
            }
            
        }
        
        
        
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
