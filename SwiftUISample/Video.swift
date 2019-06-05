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
}

let videoList = [
    Video(id: 0, title: "🤖 Keynote", url: "https://p-events-delivery.akamaized.net/3004qzusahnbjppuwydgjzsdyzsippar/m3u8/hls_vod_mvp.m3u8"),
]
