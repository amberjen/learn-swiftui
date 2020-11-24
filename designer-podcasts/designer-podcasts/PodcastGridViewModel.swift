//
//  PodcastGridViewModel.swift
//  designer-podcasts
//
//  Created by Amber Jen on 2020/11/24.
//

import SwiftUI

final class PodcastGridViewModel: ObservableObject {
    var selectedPodcast: Podcast? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    
    
}
