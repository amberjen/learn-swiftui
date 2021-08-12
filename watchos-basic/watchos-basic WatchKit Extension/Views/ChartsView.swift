//
//  ChartsView.swift
//  watchos-basic WatchKit Extension
//
//  Created by Amber Jen on 2021/8/12.
//

import SwiftUI

struct ChartsView: View {
    var body: some View {
        
        TabView {
            BarChartView()
            WedgeChartView()
            RingView()
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        
        
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
