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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // generates a random pip and suit
        let correctPip = pipValues[Int.random(in: 0...(pipValues.count-1))]
        let correctSuit = suits[Int.random(in: 0...(suits.count-1))]
        
        print(correctPip)
        print(correctSuit)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
       // print("viewWillAppear")
        pipText.setTitle(userPip, for: .normal)
        suitText.setTitle(userSuit, for: .normal)
    }
}

