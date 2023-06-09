//
//  FirstHalfView.swift
//  partTest
//
//  Created by chaekie on 2023/03/29.
//

import SwiftUI

struct FirstHalfView: View {
    @State private var lineIndex: Int = 0
    @State private var displayString: String = ""
    @State private var isNextButtonDisabled = false
    @State private var lines: [String] = [
        // 0
        "죽어라, 닝겐……!",
        // 1
        "크아악!",
        // 2
        "",
        // 3
        "엇, 여긴… 어디지…?",
        // 4
        "앗! 이세계에 다른 용사가 떨어졌다! 당신의 이름은?",
        // 5
        "안녕하세요… 제 이름은… 썹 입니다… 저 말고도 다른 분들이 계셨다니… 이곳은 도대체 어디인가요?",
        // 6
        "(뾰로롱) 안녕하세요! 아카데미 이세계에 떨어진 여러분! 저는 여러분을 안내해드릴 \"요정아빠\", \"아이작\" 입니다^^!",
        // 7
        "여러분은 앞으로 MC1 이라는 던전을 헤쳐나가야 합니다…!\n그 과정에서 여러분은 Engage, Investigate, Solution의 난관을 마주치게 될 거예요.\n하지만 걱정하지 마세요! 여러분은 할 수 있습니다(비장).",
        // 8
        "이번 던전은… 이세계(아카데미) 라이프라는 주제를 갖고 있습니다.\n여러분의 건투를 빕니다!",
        // 9
        "(우리는 곧바로 MC1 던전으로 들어갔다.\n던전 안은 어둡고 조용했으나,\n우리는 옆에 있는 우리를 믿고 더욱 깊게 걸어갈 수 있었다.)",
        // 10
        "던전에서의 첫째날, 우리는 던전의 주제인 “이세계(아카데미) 라이프”를 해결하기 위해 다같이 협력했다.",
        // 11
        "앗, 두 갈림길이다!",
        // 12
        "흠흠, 저희 지금까지 질문만 했는데, 이번엔 솔루션의 길로 가볼까요?",
        // 13
        "오, 좋은데요? 바로 가시죠!",
        // 14
        "(길을 걷는 내내 우리는 위화감에 휩싸였고 우리가 솔루션을 내기에 준비되지 않은 상태였다는 것을 깨달았다.)",
        // 15
        "(그 순간…)",
        // 16
        "(뾰로롱) 여러분! 여러분은 아직 솔루션의 길을 걷기에 준비되지 않았습니다…!\n지금은 질문의 길로 돌아가서 다시 한 번 챌린지에 대해 고민해보셔야 합니다!",
        // 17
        "(우리는 길을 되돌아오며 무엇이 이세계 라이프에 필요한지, 우리가\n진정으로 던져야 할 질문은 무엇이고 목적이 무엇인지 다시 정리할 수 있었다.)",
        // 18
        "질문의 길은 사실 질문 지옥이었다"
    ]
    @State private var names: [String] = [
        // 0
        "승천트럭",
        // 1
        "???",
        // 2
        "",
        // 3
        "썹",
        // 4
        "러너들",
        // 5
        "썹",
        // 6
        "요정아빠",
        // 7
        "요정아빠",
        // 8
        "요정아빠",
        // 9
        "두잇투잇",
        // 10
        "두잇투잇",
        // 11
        "두잇투잇",
        // 12
        "제리",
        // 13
        "하요",
        // 14
       "두잇투잇",
        // 15
        "두잇투잇",
        // 16
        "요정아빠",
        // 17
        "두잇투잇",
        // 18
        "두잇투잇",
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
        }
        .overlay(alignment: lineIndex == 2 ? .center : .bottom, content: {
            if lineIndex == 2 {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.green)
                    .frame(width: 400, height: 260)
                    .overlay(content: {
                        VStack{
                            VStack{
                                Text("두잇투잇과 함께하는")
                                Text("CBL 여정을 시작하실래용?")
                            }
                            HStack{
                                Button {
                                    lineIndex = 3
                                } label: {
                                    Text("예")
                                }
                                Text("아니오")
                            }
                        }
                    })}
            else {
                Image("landscape mode bubble")
                    .overlay(alignment: .topLeading, content: {
                        Text(names[lineIndex])
                            .font(.system(size: 25))
                            .bold()
                            .offset(x: 50.0, y: 15.0)
                            .frame(width: 100, height: 30)
                    })
                    .overlay(alignment: .topLeading) {
                        Text(lines[lineIndex])
                            .foregroundColor(lineIndex != 0 ? .white : .red)
                            .font(.system(size: 24))
                            .bold()
                            .padding([.top, .leading], 70)
                            .padding(.trailing, 35)
                            .animation(.spring(), value: lineIndex)
                    }
                    .overlay(alignment: .bottomTrailing, content: {
                        Button {
                            withAnimation {
                                lineIndex += 1
                            }
                        } label: {
                            Text("▶︎ 다음")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                                
                                .bold()
                                .blinking(duration: 0.8)
                                .padding([.bottom, .trailing], 30)
                        }
                        .disabled(isNextButtonDisabled ? true : false)
                    })
            }
        })
    }
}

struct FirstHalfView_Previews: PreviewProvider {
    static var previews: some View {
        FirstHalfView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
