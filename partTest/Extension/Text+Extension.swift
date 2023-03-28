//
//  Text+Extension.swift
//  partTest
//
//  Created by sup on 2023/03/27.
//

import Foundation
import SwiftUI

// Name text용 standard form
extension Text {
    func nameTextForm(size: CGFloat = 30,
                      fontweight : Font.Weight = .bold,
                      foregroundColor: Color = .black,
                      offsetX: CGFloat = -340,
                      offsetY: CGFloat = 50) -> some View {
        self
            .font((.system(size: size)))
            .foregroundColor(foregroundColor)
            .fontWeight(fontweight)
            .offset(x: offsetX, y: offsetY)
        

    }
}

// 다음 버튼 standard form
extension Text {
    func nextButtonForm(size: CGFloat = 30,
                      fontweight : Font.Weight = .bold,
                      foregroundColor: Color = .white,
                      offsetX: CGFloat = 300,
                      offsetY: CGFloat = 180) -> some View {
        self
            .font((.system(size: size)))
            .foregroundColor(foregroundColor)
            .fontWeight(fontweight)
            .offset(x: offsetX, y: offsetY)

    }
}




