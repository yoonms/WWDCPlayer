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
    
    var video: Video = videoList[0]
    
    let player = AVPlayer()
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                PlayerView(player: self.player, video: self.video)
                ControlView(player: self.player)
                    .padding(.all)
            }.background(Color.black)
            
            List(videoList) { video in
                Text(video.title)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(video: videoList[0])
    }
}
#endif
