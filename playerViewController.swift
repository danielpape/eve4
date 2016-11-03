//
//  playerViewController.swift
//  eve4
//
//  Created by Daniel Pape on 24/01/2016.
//  Copyright © 2016 Daniel Pape. All rights reserved.
//

import UIKit
import AVFoundation

class playerViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer = AVAudioPlayer()
    var currentlyplaying:Bool = true
    
    @IBOutlet var sessionNameLabel: UILabel!
    @IBOutlet var volumeSlider: UISlider!
    @IBOutlet var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let audioPath = Bundle.main.path(forResource: "meditation1", ofType: "mp3")!
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(string:audioPath)!)
        }catch{
            print(error)
        }
        audioPlayer.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapPlayerButton(_ sender: AnyObject) {
        if currentlyplaying{
            currentlyplaying = false
            audioPlayer.pause()
            playButton.setTitle("Play", for: UIControlState())
        }else{
            currentlyplaying = true
            audioPlayer.play()
            playButton.setTitle("Pause", for: UIControlState())
        }
    }
    
    @IBAction func slideVolumeSlider(_ sender: AnyObject) {
        audioPlayer.volume = volumeSlider.value
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
