//
//  TemplateView.swift
//  partTest
//
//  Created by Celan on 2023/03/29.
//

import SwiftUI

struct TemplateView: View {
    @State private var videoName: [String] = [
        /* 비디오 이름 배열 */
        "video",
        "video"
    ]
    
    @State private var lineIndex: Int = 0
    @State private var enemyHP: Int = 10
    @State private var displayString: String = ""
    @State private var isNextButtonDisabled = false
    @State private var characterList: [String] = [
        /* 여기다가 말하는 캐릭터 이름 써주세요 */
        /* lines의 배열 요소 개수와 캐릭터 배열 요소 개수는 동일해야 함 */
        "승천트럭",
        "요정아빠같은거"
    ]
    
    @State private var lines: [String] = [
        /* 여기다가 대사를 넣어주세요 그러면 끝 */
        "HIHIHIHIHIHI",
        "BYBVYBYBYBY"
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            BackgroundVideoView(
                videoName: $videoName[lineIndex]
            )
        }
        .overlay(alignment: .bottom) {
            Image("bubble")
                .overlay(alignment: .leading) {
                    Text(lines[lineIndex])
                        .foregroundColor(.white)
                        .padding([.bottom, .leading], 30)
//                        .applyTextTypingEffect(
//                            with: $displayString,
//                            in: $lines,
//                            lineIndex: $lineIndex,
//                            isNextButtonDisabled: $isNextButtonDisabled
//                        )
                }
                .overlay(alignment: .topLeading) {
                    Text(characterList[lineIndex])
                        .foregroundColor(.black)
                        .bold()
                        .padding(.leading, 65)
                        .padding(.top, 20)
                }
                .overlay(alignment: .bottomTrailing) {
                    Button {
                        if lineIndex < lines.count - 1 {
                            lineIndex += 1
                        } else if lineIndex == lines.count - 1{
                            // TODO: - "전투씬으로 가거나 후반씬으로 이동시키기"
                        }
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
        TemplateView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
