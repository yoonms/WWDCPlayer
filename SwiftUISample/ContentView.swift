//
//  ContentView.swift
//  SwiftUISample
//
//  Created by ms on 2019/06/05.
//  Copyright © 2019 daybreak. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ContentView : View {
    
    var videos = videoList
    var currentVideo = videoList[0]
    
    var body: some View {
        NavigationView {
            VStack {
                PlayerView(video: currentVideo)
                    .frame(height: 300)
                VideoListView(videos: videos)
            }
            .navigationBarTitle(Text(currentVideo.title))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct VideoListView : View {
    
    var videos: [Video]
    var body: some View {
        return List(videos) { video in
            VStack {
                VideoRow(video: video)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
            }
        }
    }
}
