//
//  TestTestView.swift
//  partTest
//
//  Created by Celan on 2023/03/28.
//

import SwiftUI

struct TestTestView: View {
    @State private var sceneData: [SceneData] = []
    
    var body: some View {
        ContentView(
            imageName: "truck",
            speaker: "Ssup",
            firstLine: "1번줄ㅇㅇㅇㅇㅇㅇ"
        )
    }
}

struct TestTestView_Previews: PreviewProvider {
    static var previews: some View {
        TestTestView()
            .previewDevice("iPhone 14 Pro Max")
            .previewDisplayName("14 Pro Max 가로")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
