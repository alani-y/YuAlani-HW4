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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // generates a random pip and suit
        let correctPip = pipValues[Int.random(in: 0...(pipValues.count-1))]
        let correctSuit = suits[Int.random(in: 0...(suits.count-1))]
        
        print(correctPip)
        print(correctSuit)
        
        // makes all the
        pipStatus.alpha = 0
        suitStatus.alpha = 0
        guessStatus.alpha = 0
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
       // print("viewWillAppear")
        pipText.setTitle(userPip, for: .normal)
        suitText.setTitle(userSuit, for: .normal)
    }
    
    // checks if the user guessed the pip and suit
    @IBAction func submitButton(_ sender: Any) {
        
        if((userPip != "Select Pip") && (userSuit != "Select Suit"))
        {
            guessNum += 1
        }
        else
        {
            
        }
        
    }
}

