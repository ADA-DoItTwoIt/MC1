//
//  SoundSetting.swift
//  partTest
//
//  Created by 주환 on 2023/03/29.
//

import SwiftUI
import AVKit

final class SoundSetting: ObservableObject {
    static let instance = SoundSetting()
    var player: AVAudioPlayer?
    
    func playSound(formusicName musicName: String) {
        guard let url = Bundle.main.url(forResource: "0.죽어라 닝겐", withExtension: ".mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
             print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }
    }



}

struct SoundEffectView: View {
    
    var soundSetting = SoundSetting()
    
    var body: some View {
        Text("Hello, World!")
    }
}
