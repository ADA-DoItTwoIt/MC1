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
    
    init(vName: String?, frame: CGRect) {
        super.init(frame: frame)
        // Load the resource -> h
        let fileUrl = Bundle.main.url(forResource: vName, withExtension: "mp4")!

        let item = AVPlayerItem(url: fileUrl)
        item.seekingWaitsForVideoCompositionRendering = true

        // Setup the player
        let player = AVQueuePlayer(playerItem: item)
        playerLayer.player = player
//        playerLayer.videoGravity = .resizeAspect
        layer.addSublayer(playerLayer)
        // Create a new player looper with the queue player and template item
        playerLooper = AVPlayerLooper(player: player, templateItem: item)
        // Start the movie
        player.play()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
}

