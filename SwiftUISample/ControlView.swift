//
//  ControlView.swift
//  SwiftUISample
//
//  Created by ms on 2019/06/05.
//  Copyright © 2019 daybreak. All rights reserved.
//

import SwiftUI
import AVFoundation

enum PlayerState {
    case play
    case pause
}

struct ControlView: View {
    
    private let backgroundColor = Color(red: 0, green: 0, blue: 0, opacity: 0.4)
    
    let player: AVPlayer
    
    init(player: AVPlayer) {
        self.player = player
        self.controller = PlayerController(player: player)
    }
    
    @State
    var playerState: PlayerState = .pause
    
    var isPaused: Bool {
        return playerState == .pause
    }
    
    var controller: PlayerController?
    
    var body: some View {
        HStack(spacing: 50) {
            Image("rewind")
                .tapAction {
                    self.controller?.rewind()
                }
            Image(isPaused ? "play" : "pause")
                .tapAction {
                    self.isPaused ? self.controller?.play() : self.controller?.pause()
                    self.playerState = self.isPaused ? .play : .pause
                }
            Image("fastforward")
                .tapAction {
                    self.controller?.fastForward()
                }
        }
    }
}

#if DEBUG
struct ControlView_Previews : PreviewProvider {
    static var previews: some View {
        ControlView(player: AVPlayer())
    }
}
#endif
