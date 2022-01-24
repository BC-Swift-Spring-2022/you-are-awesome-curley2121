//
//  ViewController.swift
//  Week1
//
//  Created by Sean C. on 1/24/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Loaded")
    }

    @IBAction func sayItButtonPressed(_ sender: UIButton) {
        print("Say it button was pressed")
        messageLabel.text = "You are awesome!"
    }
    
}

