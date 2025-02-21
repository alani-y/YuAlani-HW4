//
//  ViewController.swift
//  YuAlani-HW4
//
//  Created by Alani Yu on 2/18/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pipText: UIButton!
    @IBOutlet weak var suitText: UIButton!

    @IBOutlet weak var pipStatus: UILabel!
    @IBOutlet weak var suitStatus: UILabel!
    @IBOutlet weak var guessStatus: UILabel!
    
    var guessNum = 0
    
    let correctPip:String = pipValues[Int.random(in: 0...(pipValues.count-1))]
    let correctSuit:String = suits[Int.random(in: 0...(suits.count-1))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(correctPip)
        print(correctSuit)
        
        // makes all the status labels invisible at the start
        pipStatus.alpha = 0
        suitStatus.alpha = 0
        guessStatus.alpha = 0
    }

    // generates a random pip and suit
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
       // print("viewWillAppear")
        pipText.setTitle(userPip, for: .normal)
        suitText.setTitle(userSuit, for: .normal)
    }
    
    // checks if the user guessed the pip and suit
    @IBAction func submitButton(_ sender: Any) {
        
        // makes the status visible
        guessStatus.alpha = 1
        
        // checks if the user made a valid guess
        if((userPip != "Select Pip") && (userSuit != "Select Suit"))
        {
            guessNum += 1
            
            let userGuess = pipValues.firstIndex(of: userPip) ?? -1
            let correctGuess = pipValues.firstIndex(of: correctPip) ?? -1
            
            if(userGuess < correctGuess)
            {
                guessStatus.text = "Your pip value is too low."
            }
            else if(userGuess > correctGuess)
            {
                guessStatus.text = "Your pip value is too high."
            }
            else
            {
                guessStatus.text = "Correctly guessed!"
            }
        }
        else
        {
            guessStatus.text = "Select a pip value and suit first!"
        }
        
    }
}

