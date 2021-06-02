//
//  ViewController.swift
//  doYouLoveMe
//
//  Created by 羅承志 on 2021/6/2.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var flowerButton: UIButton!
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var again: UIButton!
    
    var number = Int.random(in: 5...14)
    var isLove = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loveLabel.text = "他到底愛不愛我呢？"
    }

    @IBAction func pickPetals(_ sender: UIButton) {
        let synthesizer = AVSpeechSynthesizer()
        if isLove {
            loveLabel.text = "愛我"
            let speak = AVSpeechUtterance(string: loveLabel.text!)
            speak.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            speak.pitchMultiplier = 1     //調整音調0.5~2.0
            speak.rate = 0.5     //調整速度0~1
            speak.volume = 0.5     //調整音量0~1
            synthesizer.speak(speak)
        } else {
            loveLabel.text = "不愛我"
            let speak = AVSpeechUtterance(string: loveLabel.text!)
            speak.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            speak.pitchMultiplier = 1     //調整音調0.5~2.0
            speak.rate = 0.5     //調整速度0~1
            speak.volume = 0.5     //調整音量0~1
            synthesizer.speak(speak)
        }
        if number > 0 {
            isLove.toggle()
        } else {
            flowerButton.isHidden = true
        }
        number -= 1
    }
    @IBAction func again(_ sender: UIButton) {
        number = Int.random(in: 5...20)
        flowerButton.isHidden = false
        loveLabel.text = "他到底愛不愛我呢？"
    }
}

