//
//  MainView.swift
//  SwiftUISample
//
//  Created by ms on 2019/06/05.
//  Copyright © 2019 daybreak. All rights reserved.
//

import SwiftUI
import AVFoundation

struct MainView: View {
    
    var videos = videoList
    var currentVideo = videoList[0]
    
    let player = AVPlayer()
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .bottom) {
                    
                    PlayerView(player: self.player, video: self.currentVideo)
                    
                    ControlView(controller: PlayerController(player: self.player))
                        .padding(.all)
                    
                }.background(Color.black)
        
                VideoListView(videos: videos)
            }
            .navigationBarTitle(Text(currentVideo.title))
        }
    }
}

#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
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
