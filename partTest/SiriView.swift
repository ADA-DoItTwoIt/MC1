//
//  SiriView.swift
//  partTest
//
//  Created by sup on 2023/03/28.
//

import AVFoundation
import SwiftUI

//struct SiriView: View {
//
//    var body: some View {
//
//        let speechSynthesizer = AVSpeechSynthesizer()
//        let utterance: AVSpeechUtterance = {
//            let utterance = AVSpeechUtterance(string: "제리는 공복이다.")
//            utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
//            utterance.rate = 0.5
//
//            return utterance
//        }()
//
//    }
//
//}

final class SiriModel {
    static let avSpeechSynthesizer: AVSpeechSynthesizer = .init()
    
    static func getAVSpeechUtterance(string: String) -> AVSpeechUtterance {
        let utterance = AVSpeechUtterance(string: string)
        utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
        utterance.rate = 1.5
        return utterance
    }
    
}



