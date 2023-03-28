//
//  TypingEffect.swift
//  partTest
//
//  Created by sup on 2023/03/28.
//

import Foundation
import SwiftUI


//본문내용 천천히 나타나는 용
struct Lines: View {
    
    var characterArray: [String]
    @State var characterLoopIndex: Int = -1
    let loopDuration: Double = 0.15
    
    init(input: String) {
        characterArray = input.map { String($0) }
    }
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(characterArray.indices) { index in
                Text("\(characterArray[index])")
                    .opacity(characterLoopIndex >= index ? 1 : 0)
                    .animation(.linear(duration: loopDuration))
            }
        }
        .onAppear(perform: {
            startCharacterAnimation()
        })
    }
    
    
    func startCharacterAnimation() {
        let timer = Timer.scheduledTimer(withTimeInterval: loopDuration, repeats: true) { (timer) in
            
            characterLoopIndex += 1
            if characterLoopIndex >= characterArray.count {
                timer.invalidate()
            }
            
        }
        timer.fire()
    }
    
    // 본문 첫번째문장 basic setting
    func FirstBasicLineSetting(size: CGFloat = 25,
                      foregroundColor: Color = .white,
                      fontweight: Font.Weight = .bold,
                               offsetX: CGFloat = -200,
                               offsetY: CGFloat = 100
                                                    ) -> some View {
        self
            .font(.system(size: size))
            .fontWeight(fontweight)
            .foregroundColor(foregroundColor)
            .offset(x: offsetX, y: offsetY)
    }
    
    // 본문 두번째문장 basic setting
    func SecondBasicLineSetting(size: CGFloat = 25,
                      foregroundColor: Color = .white,
                      fontweight: Font.Weight = .bold,
                                offsetX: CGFloat = -130,
                                offsetY: CGFloat = 140
                                                    ) -> some View {
        self
            .font(.system(size: size))
            .fontWeight(fontweight)
            .foregroundColor(foregroundColor)
            .offset(x: offsetX, y: offsetY)
        
    }
}

