//
//  SuitVC.swift
//  YuAlani-HW4
//
//  Created by Alani Yu on 2/20/25.
//

import UIKit

public let suits = ["Clubs", "Spades", "Aces", "Hearts"]
var userSuit:String = "Select Suit"

class SuitVC: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var suitTableView: UITableView!
    
    let suitCellIdentifier = "SuitCell"
    let PipSegue = "SuitSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        suitTableView.delegate = self
        suitTableView.dataSource = self
    }

    // returns the number of possible pip values
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return suits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = suitTableView.dequeueReusableCell(withIdentifier: suitCellIdentifier, for: indexPath as IndexPath)
        cell.textLabel?.text = suits[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        suitTableView.deselectRow(at: indexPath, animated: true)
        
        userSuit = suits[indexPath.row]
        print(suits[indexPath.row])
    }

}
