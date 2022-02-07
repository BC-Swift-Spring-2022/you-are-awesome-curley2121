//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Sean C. on 1/23/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var soundSwitch: UISwitch!
    var messages = ["You are awesome", "You are great", "you are alright", "woah", "hello", "whats up"]
    var imageNum = -1
    var messageNum = -1
    var soundNum = -1
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("view loaded")
        messageLabel.text = "Fabulous!"
    }
    func playSound(filename:String){
        if let sound = NSDataAsset(name: filename){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch{
                print("Error playing sound \(error.localizedDescription)")
            }
            
        }else{
            print("Error sound")
        }
    }
    func nonRepeatingRandom(orginal: Int, upperBounds: Int) -> Int{
        var newNum: Int
        
        repeat{
            newNum = Int.random(in: 0...upperBounds)
            
        }while newNum == orginal
        return newNum
    }
    
    @IBAction func messageButtonPress(_ sender: UIButton) {
        
        imageNum = nonRepeatingRandom(orginal: imageNum, upperBounds: 2)
        let imageName = "image\(imageNum)"
        imageView.image = UIImage(named: imageName)

        messageNum = nonRepeatingRandom(orginal: messageNum, upperBounds: messages.count-1)
        messageLabel.text = messages[messageNum]

        soundNum = nonRepeatingRandom(orginal: soundNum, upperBounds: 2)
        let soundName = "sound\(soundNum)"
        if soundSwitch.isOn{
            playSound(filename: soundName)
        }
         
        

        
    }
    

}

