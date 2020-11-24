//
//  PodcastGridView.swift
//  designer-podcasts
//
//  Created by Amber Jen on 2020/11/23.
//

import SwiftUI

struct PodcastGridView: View {
    
    @StateObject var viewModel = PodcastGridViewModel()
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                Spacer()
                
                LazyVGrid(columns: columns) {
                    ForEach(MockData.podcasts) { podcast in
                        PodcastTitleView(podcast: podcast)
                            .onTapGesture {
                                viewModel.selectedPodcast = podcast
                            }
                    }
                }
            }.navigationTitle("Podcasts for 👩‍🎨🎨")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                PodcastDetailView(podcast: viewModel.selectedPodcast ?? MockData.samplePodcast, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
        
        
          
        
        
    }
}

struct PodcastGridView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PodcastGridView()
                .preferredColorScheme(.dark)
        }
    }
}

struct PodcastTitleView: View {
    // let name: String
    // let coverImg: String
    
    let podcast: Podcast
        
    var body: some View {
        VStack(alignment: .leading) {
            Image(podcast.coverImg)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150,
                       height: 150)
                .cornerRadius(12)
            
            Text(podcast.name)
                .font(.title3)
                .fontWeight(.medium)
                .lineLimit(2)
                .frame(width: 150, height: 50, alignment: .topLeading)
            
            Text(podcast.artist)
                .font(.body)
                .foregroundColor(Color(.gray))
                .lineLimit(1)
        }
        .padding()
    }
    
}
