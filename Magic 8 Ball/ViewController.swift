//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by William Robersone on 7/28/19.
//  Copyright © 2019 William Robersone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var magicBallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateMagic8Ball()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        updateMagic8Ball()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagic8Ball()
    }
    
    func updateMagic8Ball () {
        randomBallNumber = Int.random(in: 0 ... 4)
        magicBallImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

