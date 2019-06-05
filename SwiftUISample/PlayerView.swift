//
//  PlayerView.swift
//  SwiftUISample
//
//  Created by ms on 2019/06/05.
//  Copyright © 2019 daybreak. All rights reserved.
//

import SwiftUI
import AVFoundation

class PlayerUIView: UIView {
    
    var player: AVPlayer? {
        get {
            return playerLayer.player
        }
        set {
            playerLayer.player = newValue
        }
    }
    
    var playerLayer: AVPlayerLayer {
        guard let playerLayer = layer as? AVPlayerLayer else {
            return AVPlayerLayer()
        }
        return playerLayer
    }
    
    override class var layerClass: AnyClass {
        return AVPlayerLayer.self
    }
}

struct PlayerView: UIViewRepresentable {
    
    private let player = AVPlayer()
    var video: Video
    
    func makeUIView(context: UIViewRepresentableContext<PlayerView>) -> PlayerUIView {
        let view = PlayerUIView()
        view.player = player
        return view
    }
    
    func updateUIView(_ view: PlayerUIView, context: UIViewRepresentableContext<PlayerView>) {
        guard let url = URL(string: video.url) else { return }
        let item = AVPlayerItem(url: url)
        view.player?.replaceCurrentItem(with: item)
        view.player?.play()
    }
}
