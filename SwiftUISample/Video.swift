//
//  Video.swift
//  SwiftUISample
//
//  Created by ms on 2019/06/05.
//  Copyright © 2019 daybreak. All rights reserved.
//

import Foundation
import SwiftUI

struct Video: Identifiable {
    var id: Int
    var title: String
    var url: String
    var platforms: [Platform]
    var isPlaying = false
    
    var platformString: String {
        return platforms.map { $0.rawValue }.joined(separator: ", ")
    }
}

enum Platform: String, CaseIterable {
    case iOS, macOS, tvOS, watchOS
}

let allPlatforms = Platform.allCases

let videoList = [
    Video(id: 101, title: "Keynote", url: "https://p-events-delivery.akamaized.net/3004qzusahnbjppuwydgjzsdyzsippar/m3u8/hls_vod_mvp.m3u8", platforms: allPlatforms),
    Video(id: 103, title: "Platforms State of the Union", url: "https://devstreaming-cdn.apple.com/videos/wwdc/2019/103bax22h2udxu0n/103/hls_vod_mvp.m3u8", platforms: allPlatforms),
    Video(id: 104, title: "Apple Design Awards", url: "https://devstreaming-cdn.apple.com/videos/wwdc/2019/104d6zyhb21vki/104/hls_vod_mvp.m3u8", platforms: allPlatforms)
]
