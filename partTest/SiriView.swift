//
//  SiriView.swift
//  partTest
//
//  Created by sup on 2023/03/28.
//

import AVFoundation
import SwiftUI

struct SiriView: View {
    
    var body: some View {
        
        let speechSynthesizer = AVSpeechSynthesizer()
        let utterance: AVSpeechUtterance = {
            let utterance = AVSpeechUtterance(string: "제리는 공복이다.")
            utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
            utterance.rate = 0.5

            return utterance
        }()
        
        Button {
            speechSynthesizer.speak(utterance)
        } label: {
            Text("asd")
        }

        
    }
    
}




struct SiriView_Previews: PreviewProvider {
    static var previews: some View {
        SiriView()
            .previewDevice("iPhone 14 Pro Max")
            .previewDisplayName("14 Pro Max 가로")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}



