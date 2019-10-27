//
//  ViewController.swift
//  RPS
//
//  Created by Oleksii Kolakovskyi on 10/8/19.
//  Copyright © 2019 Aleksey. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

var gameIsActive = true
    
let paper = "✋"
let scissors = "✌️"
let rock = "👊"

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
    

    

@IBOutlet weak var compScore: UILabel!
    
@IBOutlet weak var plrScore: UILabel!
    
var computerScored = 0
    
var playerScored = 0
    

    
func randomSign() -> String {
        let sign = randomChoice.nextInt()
        if sign == 0 {
            return paper
        } else if sign == 1 {
            return scissors
        } else {
            return rock
        }
        return " "
    }


    
    
    
    @IBAction func playAgainButtonTapped(_ sender: UIButton) {
        
        computersChoise.text = "🤖"
        gameIsActive = true
        textLabel.text = "Paper, Scissors or Rock?"
        playAgainButton.isHidden = true
    }
    
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var computersChoise: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    
    @IBAction func paperButtonTapped(_ sender: UIButton) {
       let sign = randomSign()
        if gameIsActive == false {
            return
            
        }
        if gameIsActive == true {
        computersChoise.text = sign
                  if sign == paper {
            textLabel.text = "You are tied"
           } else if sign == scissors {
               textLabel.text = "You lost"
                    computerScored += 1
           } else if sign == rock {
               textLabel.text = "You won!"
               playerScored += 1        }
          computersChoise.isHidden = false
          gameIsActive = false
        playAgainButton.isHidden = false
        }
        compScore.text = String(computerScored)
        plrScore.text = String(playerScored)
}
    
    @IBAction func scissorsButtonTapped(_ sender: UIButton) {
        let sign = randomSign()
     if gameIsActive == false {
         return
     }
     if gameIsActive == true {
     computersChoise.text = sign
               if sign == scissors {
         textLabel.text = "You are tied"
        } else if sign == rock {
            textLabel.text = "You lost"
                computerScored += 1
        } else if sign == paper {
            textLabel.text = "You won!"
                playerScored += 1
     }
       computersChoise.isHidden = false
       gameIsActive = false
     playAgainButton.isHidden = false
         
     }
        compScore.text = String(computerScored)
        plrScore.text = String(playerScored)
    }
    
    @IBAction func rockButtonTapped(_ sender: UIButton) {
        let sign = randomSign()
        if gameIsActive == false {
            return
        }
        if gameIsActive == true {
        computersChoise.text = sign
                  if sign == rock {
            textLabel.text = "You are tied"
           } else if sign == paper {
               textLabel.text = "You lost"
                    computerScored += 1
           } else if sign == scissors {
               textLabel.text = "You won!"
                    playerScored += 1
        }
          computersChoise.isHidden = false
          gameIsActive = false
        playAgainButton.isHidden = false
        }
        compScore.text = String(computerScored)
        plrScore.text = String(playerScored)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

