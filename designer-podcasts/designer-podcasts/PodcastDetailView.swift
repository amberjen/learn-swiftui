//
//  PodcastDetailView.swift
//  designer-podcasts
//
//  Created by Amber Jen on 2020/11/24.
//

import SwiftUI

struct PodcastDetailView: View {
    
    var podcast: Podcast
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        
        VStack {
            HStack {
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            
            
            Spacer()
            
            HStack(alignment: .top) {
                Image(podcast.coverImg)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120,
                           height: 120)
                    .cornerRadius(12)
                    .padding(.trailing, 10)
                
                VStack(alignment: .leading) {
                    Text(podcast.name)
                        .font(.title2)
                        .fontWeight(.medium)
                        .lineLimit(2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 5)
                    
                    Text(podcast.artist)
                        .font(.title3)
                        .foregroundColor(Color(.gray))
                        .lineLimit(1)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 30)
            
            
            
            Text(podcast.description)
                .font(.body)
                .padding(.horizontal, 30)
            
            Spacer()
            
            Button {
                // Action
                isShowingSafariView = true
            } label: {
                    
                PButton(title: "Listen Now")
                
            }
            
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: podcast.url) ?? URL(string: "www.apple.com")!)
        })
        
    }
}

struct PodcastDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastDetailView(podcast: MockData.samplePodcast, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
