//
//  VideoRow.swift
//  SwiftUISample
//
//  Created by sohee on 2019/06/06.
//  Copyright © 2019 daybreak. All rights reserved.
//

import SwiftUI

struct VideoRow : View {
    var video: Video
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                TitleText(text: video.title)
                HStack {
                    DescriptionText(text: "Session \(video.id)")
                    DescriptionText(text: "·")
                    DescriptionText(text: video.platformString)
                }
            }
            Spacer()
            if video.isPlaying {
                Image(systemName: "music.mic")
            }
        }
    }
}

#if DEBUG
struct VideoRow_Previews : PreviewProvider {
    static var previews: some View {
        VideoRow(video: videoList[0])
    }
}
#endif

struct TitleText: View {
    let text: String
    var body: some View {
        return Text(text)
            .color(.primary)
            .bold()
    }
}

struct DescriptionText : View {
    let text: String
    var body: some View {
        return Text(text)
            .font(.footnote).fontWeight(.semibold)
            .color(.secondary)
    }
}
