//
//  1.swift
//  partTest
//
//  Created by 주환 on 2023/03/29.
//
import SwiftUI
import AVFoundation
import AVKit


struct PlayerView: UIViewRepresentable {
    var videoName: String
    init(vName: String) {
        videoName = vName
    }
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) { }
    
    func makeUIView(context: Context) -> UIView {
        return LoopingPlayerUIView(
            vName: videoName,
            frame: .zero
        )
        
    }
}

struct BackgroundVideoView: View {
    var videoName: String
    init(forVideoName vName: String) {
        videoName = vName
    }
    var body: some View {
        ZStack{
            GeometryReader{ geo in
                PlayerView(vName: videoName)
            }
        }
    }
}


