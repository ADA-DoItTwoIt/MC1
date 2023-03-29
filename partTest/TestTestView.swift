//
//  TestTestView.swift
//  partTest
//
//  Created by Celan on 2023/03/28.
//

import SwiftUI

struct TestTestView: View {
    var body: some View {
        ContentView()
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
