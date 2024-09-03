//
//  ViewController.swift
//  Xylophone
//
//  Created by Sajal Kaushal on 03/09/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(resource: sender.currentTitle ?? "")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func playSound(resource: String) {
        if let url = Bundle.main.url(forResource: "Sounds/\(resource)", withExtension: "wav") {
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        } else {
            print("Resource not found: \(resource).wav")
        }
    }
}


