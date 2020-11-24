//
//  PButton.swift
//  designer-podcasts
//
//  Created by Amber Jen on 2020/11/24.
//

import SwiftUI

struct PButton: View {
    
    var title: String
    
    var body: some View {
        
        HStack {
            Image(systemName: "headphones")
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
              
        }
        .frame(width: 280, height: 50)
          .background(Color.white)
        .foregroundColor(Color.black)
        .cornerRadius(8)
        
        
       
    }
}

struct PButton_Previews: PreviewProvider {
    static var previews: some View {
        PButton(title: "Test Title")
            .preferredColorScheme(.dark)
    }
}
