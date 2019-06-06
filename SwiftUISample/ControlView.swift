//
//  ControlView.swift
//  SwiftUISample
//
//  Created by ms on 2019/06/05.
//  Copyright © 2019 daybreak. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ControlView: View {

    @State var playerState: PlayerState = .pause
    
    let controller: PlayerController

    init(controller: PlayerController) {
        self.controller = controller
    }
    
    var isPaused: Bool {
        return playerState == .pause
    }
    
    var body: some View {
        HStack(spacing: 50) {
            Image("rewind")
                .tapAction {
                    self.controller.rewind()
                }
            Image(isPaused ? "play" : "pause")
                .tapAction {
                    self.isPaused ? self.controller.play() : self.controller.pause()
                    self.playerState = self.isPaused ? .play : .pause
                }
            Image("fastforward")
                .tapAction {
                    self.controller.fastForward()
                }
        }
    }
}

#if DEBUG
struct ControlView_Previews : PreviewProvider {
    static var previews: some View {
        ControlView(controller: PlayerController(player: AVPlayer()))
    }
}
#endif
