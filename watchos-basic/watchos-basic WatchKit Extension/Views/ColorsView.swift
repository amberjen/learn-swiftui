//
//  ColorsView.swift
//  watchos-basic WatchKit Extension
//
//  Created by Amber Jen on 2021/8/12.
//

import SwiftUI

struct ColorsView: View {
    
    @State var colors: [ColorModel] = [
        ColorModel(name: "Red"),
        ColorModel(name: "White"),
        ColorModel(name: "Blue"),
        ColorModel(name: "Black"),
        ColorModel(name: "Pink"),
        ColorModel(name: "Yellow")
    ]
    
    
    var body: some View {
        
        List {
            ForEach(colors) { color in
                NavigationLink(
                    destination: Text(color.name),
                    label: {
                        Text(color.name)
                    })
            }
        } // END: List
        
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
