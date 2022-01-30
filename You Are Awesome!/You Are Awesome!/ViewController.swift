//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Sean C. on 1/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var messages = ["You are awesome", "You are great", "you are alright", "woah", "hello", "whats up"]
    var imageNum = 0
    var messageNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("view loaded")
        messageLabel.text = "Fabulous!"
    }

    @IBAction func messageButtonPress(_ sender: UIButton) {
        print(imageNum)
        let imageName = "image\(Int.random(in: 0...2))"
        imageView.image = UIImage(named: imageName)
//        imageNum = imageNum + 1
//        if imageNum == 3{
//            imageNum = 0
//        }
        
//        messageNum = messageNum + 1
//        if messageNum == messages.count{
//            messageNum = 0
//        }
        messageNum = Int.random(in: 0...messages.count-1)
        messageLabel.text = messages[messageNum]
        
        
        
        
//        print("pressed")
//        let awesomeMessage = "You are Awesome!"
//        let greatMessage = "You are Great!"
//        let fineMessage = "You're fine"
//        if messageLabel.text == awesomeMessage{
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image0")
//        }else if messageLabel.text == greatMessage{
//            messageLabel.text = fineMessage
//            imageView.image = UIImage(named: "image1")
//        }else{
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image2")
//        }
        
        
        
        
    }
    

}

