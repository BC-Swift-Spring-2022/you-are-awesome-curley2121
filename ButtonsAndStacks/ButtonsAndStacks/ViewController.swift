//
//  ViewController.swift
//  ButtonsAndStacks
//
//  Created by Sean C. on 1/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorLabel: UILabel!
    var colors: [UIColor] = [.red,.orange,.yellow,.green,.blue,.systemIndigo, .purple]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func colorButtonPress(_ sender: UIButton) {
//        if sender.tag == 1000{
//            colorLabel.text = ""
//        }else{
//            colorLabel.text = "You clicked " + sender.currentTitle!
//            colorLabel.textColor = colors[sender.tag]
//        }
        
        if sender.tag >= 0 && sender.tag <= 7{
            colorLabel.text = "You clicked " + sender.currentTitle!
            colorLabel.textColor = colors[sender.tag]
            
        }else{
            colorLabel.text = ""
        }
        
        
    }
    
}

