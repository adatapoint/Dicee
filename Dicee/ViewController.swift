//
//  ViewController.swift
//  Dicee
//
//  Created by Vincent Restrepo on 5/14/19.
//  Copyright © 2019 Vincent Restrepo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0

    @IBOutlet weak var labelDice1: UILabel!
    
    @IBOutlet weak var labelDice2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceNumbers()
    }

    @IBAction func buttonRoll(_ sender: UIButton) {
        updateDiceNumbers()
    }
    
    func updateDiceNumbers() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        labelDice1.text = "\(randomDiceIndex1)"
        labelDice2.text = "\(randomDiceIndex2)"
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateDiceNumbers()
        }
    }
    
}
