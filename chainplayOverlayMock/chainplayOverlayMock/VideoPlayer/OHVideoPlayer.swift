//
//  OHPlayerView.swift
//  chainplayOverlayMock
//
//  Created by Oliver Han on 9/16/18.
//  Copyright © 2018 Oliver Han. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class OHVideoPlayer: UIView {
    var videoPlayer: AVPlayer?
    var playerVC: AVPlayerViewController?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let path = Bundle.main.path(forResource: "IMG_0513", ofType: "mp4") {
            let contentURL = URL(fileURLWithPath: path)
            videoPlayer = AVPlayer(url: contentURL)
            playerVC = AVPlayerViewController()
            playerVC?.player = videoPlayer
            self.addSubview((playerVC?.view)!)
            playerVC?.view.frame = self.frame
        }
    }    
}
