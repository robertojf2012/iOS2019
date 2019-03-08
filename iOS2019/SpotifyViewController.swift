//
//  SpotifyViewController.swift
//  iOS2019
//
//  Created by Robert JF on 3/7/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit

class SpotifyViewController: VideoSplashViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setBackgroundVideo()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func setBackgroundVideo(){
        let url = URL(fileURLWithPath: Bundle.main.path(forResource: "moments", ofType: "mp4")!)
        
        videoFrame = view.frame
        fillMode = .resizeAspectFill
        alwaysRepeat = true
        sound = true
        startTime = 2.0
        alpha = 0.8
        
        contentURL = url
        view.isUserInteractionEnabled = true
    }
    

}
