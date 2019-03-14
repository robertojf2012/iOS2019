//
//  BasketballTimerViewController.swift
//  iOS2019
//
//  Created by Robert JF on 3/13/19.
//  Copyright © 2019 Robert JF. All rights reserved.
//

import UIKit

class BasketballTimerViewController: UIViewController {

    @IBOutlet weak var lblIndicator: UILabel!
    
    var countDownTimer: Timer!
    var totalTime = 24
    
    @IBOutlet weak var lblTimer: UILabel!
    @IBOutlet weak var btnStartStop: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblIndicator.layer.masksToBounds = true
        lblIndicator.layer.cornerRadius = 12
    }
    
    @IBAction func btnStart(_ sender: Any) {
        
        lblIndicator.isHidden = true;
        
        if(countDownTimer == nil){
            startTimer()
        }else{
            
            if(btnStartStop.titleLabel?.text == "Stop"){
                countDownTimer.invalidate()
                btnStartStop.setTitle("Start", for: UIControl.State.normal)
                lblIndicator.isHidden = false
            }else{
                startTimer()
            }
            
        }
    }
    
    func startTimer(){
        countDownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    func endTimer() {
        countDownTimer.invalidate()
    }
    
    @objc func updateTime(){
        lblTimer.text = "\(totalTime)"
        
        if(lblIndicator.isHidden == true){
            btnStartStop.setTitle("Stop", for: UIControl.State.normal)
        }else{
            btnStartStop.setTitle("Start", for: UIControl.State.normal)
        }
        
        if(totalTime != 0){
            totalTime -= 1
        }else {
            endTimer()
        }
    }

}
