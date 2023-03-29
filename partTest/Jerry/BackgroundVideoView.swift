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
    var isPlay: Bool
    init(vName: String, isPlay: Bool) {
        videoName = vName
        self.isPlay = isPlay
    }
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) { }
    
    func makeUIView(context: Context) -> UIView {
        return LoopingPlayerUIView(vName: videoName, frame: .zero, isPlay: isPlay)
    }
}

struct BackgroundVideoView: View {
    @Binding var isPlay: Bool
    
    var videoName: String
    var body: some View {
        PlayerView(vName: videoName, isPlay: isPlay)
        
//        ZStack{
//            GeometryReader { geo in
//                PlayerView(vName: videoName)
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: geo.size.width, height: geo.size.height+100)
//                    .edgesIgnoringSafeArea(.all)
//                    .overlay(Color.black.opacity(0.2))
//                    .blur(radius: 1)
//                    .edgesIgnoringSafeArea(.all)
//            }
//        }
    }
}

