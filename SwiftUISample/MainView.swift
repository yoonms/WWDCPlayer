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
    
    @EnvironmentObject var userData: UserData
    
    let player = AVPlayer()
    var videos = videoList
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .bottom) {
                    
                    PlayerView(player: self.player, video: userData.currentVideo)
                    
                    ControlView(controller: PlayerController(player: self.player))
                        .padding(.all)
                    
                }.background(Color.black)
        
                VideoListView(videos: videos)
            }
            .navigationBarTitle(Text(userData.currentVideo.title))
        }
    }
}

#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(UserData())
    }
}
#endif

struct VideoListView : View {
    
    var videos: [Video]
    var body: some View {
        return List(videos) { video in
            VideoRow(video: video)
        }
    }
}
