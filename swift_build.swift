//
//  ViewController.swift
//  Music_Player
//
//  Created by koala on 10/09/2018.
//  Copyright © 2018 koala. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    
    
    @IBAction func Play(_ sender: Any)
    {
        player.play()
    }
    @IBAction func Pause(_ sender: Any)
    {
        player.pause()
    }
    @IBAction func Replay(_ sender: Any)
    {
        player.currentTime = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do
        {
            let audioPath = Bundle.main.path(forResource: "song", ofType: "wav")
             try player = AVAudioPlayer(contentsOf: NSURL (fileURLWithPath: audioPath!) as URL)
    }
    catch
    {
            //ERROR
        }
        
    }
        }
        // Dispose of any resources that can be recreated.


