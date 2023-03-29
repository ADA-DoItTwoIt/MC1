//
//  TemplateView.swift
//  partTest
//
//  Created by Celan on 2023/03/29.
//

import SwiftUI

struct TemplateView: View {
    let videoName: String
    
    @State private var isPlay: Bool = false
    @State private var lineIndex: Int = 0
    @State private var enemyHP: Int = 10
    @State private var displayString: String = ""
    @State private var isNextButtonDisabled = false
    @State private var lines: [String] = [
        /* 여기다가 대사를 넣어주세요 그러면 끝 */
        "HIHIHIHIHIHI",
        "BYBVYBYBYBY"
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            BackgroundVideoView(
                isPlay: $isPlay,
                videoName: "video"
            )
        }
        .overlay(alignment: .bottom) {
            Image("bubble")
                .overlay(alignment: .leading) {
                    Text(displayString)
                        .foregroundColor(.white)
                        .padding([.bottom, .leading], 30)
                        .applyTextTypingEffect(
                            with: $displayString,
                            in: $lines,
                            lineIndex: $lineIndex,
                            isNextButtonDisabled: $isNextButtonDisabled
                        )
                }
                .overlay(alignment: .topLeading) {
                    Text("Name")
                        .foregroundColor(.black)
                        .bold()
                        .padding(.leading, 75)
                        .padding(.top, 20)
                }
                .overlay(alignment: .bottomTrailing) {
                    Button {
//                        lineIndex += 1
                        isPlay.toggle()
                    } label: {
                        Text("▶︎  다음")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                            .bold()
                            .blinking(duration: 0.8)
                            .padding(
                                [.bottom, .trailing],
                                30
                            )
                    }
                    .disabled(isNextButtonDisabled ? true : false)
                }
        }
    }
}

struct TemplateView_Previews: PreviewProvider {
    static var previews: some View {
        TemplateView(videoName: "video")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
