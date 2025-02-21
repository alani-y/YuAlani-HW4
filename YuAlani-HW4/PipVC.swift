//
//  PipVC.swift
//  YuAlani-HW4
//
//  Created by Alani Yu on 2/19/25.
//

import UIKit

public let pipValues = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

var userPip:String = "Select Pip"

class PipVC: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    let textCellIdentifier = "TableCell"
    let PipSegue = "PipSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    // returns the number of possible pip values
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pipValues.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath as IndexPath)
        cell.textLabel?.text = pipValues[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        userPip = pipValues[indexPath.row]
        print(pipValues[indexPath.row])
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == PipSegue,
           let destination = segue.destination as? PipVC,
           let teamIndex = tableView.indexPathForSelectedRow?.row {
            destination.teamName = pipValues[teamIndex]
        }
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
