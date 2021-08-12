//
//  ContentView.swift
//  watchos-basic WatchKit Extension
//
//  Created by Amber Jen on 2021/8/12.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        
        List {
            Button(action: {
                isPresented.toggle()
            }, label: {
                Text("Charts")
            })
            .fullScreenCover(isPresented: $isPresented, content: {
                ChartsView.init()
            })
            
            
            NavigationLink(
                destination: ColorsView(),
                label: {
                    Text("Colors")
                })
                .navigationTitle("Home")
            
        } // END: List
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
