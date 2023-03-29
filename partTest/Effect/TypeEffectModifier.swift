//
//  TypeEffectModifier.swift
//  partTest
//
//  Created by Celan on 2023/03/29.
//

import SwiftUI

struct TypeEffectModifier: ViewModifier {
    @Binding var lineIndex: Int
    @Binding var isNextButtonDisabled: Bool
    @Binding var lines: [String]
    @Binding var displayString: String
    let speed: Double
    
    func body(content: Content) -> some View {
        content
            .onChange(of: lineIndex) { _ in
                isNextButtonDisabled = true
                displayString = ""
                lines[lineIndex].enumerated().forEach { index, character in
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.05) {
                        displayString += String(character)
                        if displayString == lines[lineIndex] {
                            isNextButtonDisabled = false
                        }
                    }
                }
            }
            .onAppear {
                isNextButtonDisabled = true
                displayString = ""
                lines[0].enumerated().forEach { index, character in
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.05) {
                        displayString += String(character)
                        if displayString == lines[lineIndex] {
                            isNextButtonDisabled = false
                        }
                    }
                }
            }
    }
}

extension View {
    /**
     특정 Text 뷰에 타이핑 효과를 줄 떄 적용합니다.
     - Parameters:
        - with: 타이핑 효과를 직접 받을 displayString을 할당합니다. 할당한 with @State 아규먼트에 Type Effect가 적용됩니다.
        - in: 각 인덱스를 전달했을 때 받아올 대사들의 배열을 전달합니다.
        - lineIndex: lineIndex
        - isNextButtonDisabled: 타이핑이 진행 중일 때, 버튼을 누르지 못하도록 합니다(현재 버튼을 누르면 타이핑 이펙트가 이상해지는 오류가 있음)
        - speed: 0.05가 기본 속도이며 숫자가 작아질수록 빠르게 애니메이션을 진행할 수 있습니다.
     - Author: Celan
     */
    func applyTextTypingEffect(
        with displayString: Binding<String>,
        in lines: Binding<[String]>,
        lineIndex: Binding<Int>,
        isNextButtonDisabled: Binding<Bool>,
        speed: Double = 0.05
    ) -> some View {
        modifier(
            TypeEffectModifier(
                lineIndex: lineIndex,
                isNextButtonDisabled: isNextButtonDisabled,
                lines: lines,
                displayString: displayString,
                speed: speed
            )
        )
    }
}
