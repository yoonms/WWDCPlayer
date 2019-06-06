//
//  PlayerController.swift
//  SwiftUISample
//
//  Created by ms on 2019/06/05.
//  Copyright © 2019 daybreak. All rights reserved.
//

import AVFoundation

struct PlayerController {
    
    let player: AVPlayer
    
    func play() {
        player.play()
    }
    
    func pause() {
        player.pause()
    }
    
    func fastForward() {
        let currentTime = player.currentTime().seconds
        let destination = CMTime(seconds: currentTime + 10, preferredTimescale: 1)
        player.seek(to: destination)
    }
    
    func rewind() {
        let currentTime = player.currentTime().seconds
        let destination = CMTime(seconds: currentTime - 10, preferredTimescale: 1)
        player.seek(to: destination)
    }
}
