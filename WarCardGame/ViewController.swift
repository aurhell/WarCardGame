//
//  ViewController.swift
//  WarCardGame
//
//  Created by Aurélien Girault on 25/01/2020.
//  Copyright © 2020 Aurélien Girault. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var playerScore:Int = 0
    var cpuScore: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber:Int = Int.random(in: 2...14)
        let rightNumber:Int = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if (leftNumber > rightNumber) {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }
        
        if (rightNumber > leftNumber) {
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        }
    }
}

