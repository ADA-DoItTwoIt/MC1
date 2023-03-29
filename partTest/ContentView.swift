//
//  ContentView.swift
//  partTest
//
//  Created by sup on 2023/03/27.
//

import SwiftUI

struct ContentView: View {

    var body: some View {

        ZStack{
            Color.black.ignoresSafeArea()
            BackgroundVideoView(forVideoName: "video")
                .scaledToFit()
            // 배경사진, 채팅팝업사진
//            Image("truck").resizable().scaledToFit()
            Image("landscape mode bubble")
                .offset(x: -20, y: 120)
            
            // text관련내용들
            Text("SSup").nameTextForm() // 이름 위한 form
            Lines(input: "내...내가 이세계아카데미에 전생하다니..!").FirstBasicLineSetting()
//            Lines(input: "두번째줄 내용 내...내가 이세계아카데미에 전생하다니..!").SecondBasicLineSetting()
            Text("▶︎  Next").nextButtonForm().blinking(duration: 0.5)  //다음버튼위한 form
            
        }
        
    }
        
}




//PreviewProvider
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {

            ContentView()
                .previewDevice("iPhone 14 Pro Max")
                .previewDisplayName("14 Pro Max 가로")
                .previewInterfaceOrientation(.landscapeLeft)
    }
}
