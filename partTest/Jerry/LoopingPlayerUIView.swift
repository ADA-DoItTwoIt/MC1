//
//  2.swift
//  partTest
//
//  Created by 주환 on 2023/03/29.
//

import SwiftUI
import AVKit
import AVFoundation

class LoopingPlayerUIView: UIView {
    private let playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
//    var videoString: String
//    let videoName: String?
    
    init(vName: String, frame: CGRect) {
        super.init(frame: frame)
        // Load the resource -> h
        let fileUrl = Bundle.main.url(forResource: vName, withExtension: "mp4")!
//        let fileUrl = URL(string: "https://youtu.be/cHkDZ1ekB9U")!
        let asset = AVAsset(url: fileUrl)
        let item = AVPlayerItem(asset: asset)
        // Setup the player
        let player = AVQueuePlayer()
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        // Create a new player looper with the queue player and template item
        playerLooper = AVPlayerLooper(player: player, templateItem: item)
        // Start the movie
        player.play()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//
//    init(vName: String) {
//        super.init(frame: frame)
//        let fileUrl = Bundle.main.url(forResource: vName, withExtension: "mp4")!
////        let fileUrl = URL(string: "https://youtu.be/cHkDZ1ekB9U")!
//        let asset = AVAsset(url: fileUrl)
//        let item = AVPlayerItem(asset: asset)
//        // Setup the player
//        let player = AVQueuePlayer()
//        playerLayer.player = player
//        playerLayer.videoGravity = .resizeAspectFill
//        layer.addSublayer(playerLayer)
//        // Create a new player looper with the queue player and template item
//        playerLooper = AVPlayerLooper(player: player, templateItem: item)
//        // Start the movie
//        player.play()
//    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}
