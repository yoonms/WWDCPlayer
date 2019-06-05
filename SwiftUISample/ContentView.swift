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
    
    var body: some View {
        VStack {
            PlayerView(video: video)
                .frame(height: 300)
            
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
