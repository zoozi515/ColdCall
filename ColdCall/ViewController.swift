//
//  ViewController.swift
//  ColdCall
//
//  Created by admin on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var namesLabel: UILabel!
    
    @IBOutlet weak var numbersLabel: UILabel!
    
    let namesArray: [String] = ["Jimmy", "Cody", "Bryant", "Royta", "Jay"]
    let numbersArray: [Int] = [1, 2, 3, 4, 5]

    
    @IBAction func coldCallPressed(_ sender: UIButton) {
        let position = Int.random(in: 0..<5)
        namesLabel.text = "\(namesArray[position])"
        numbersLabel.text = "\(numbersArray[position])"
        if numbersArray[position] == 1 || numbersArray[position] == 2 {
            numbersLabel.textColor = UIColor.red
            /* custom color */
            //label.textColor = UIColor(red: 0.0, green: 0.004, blue: 0.502, alpha: 1.0)
        } else if numbersArray[position] == 3 || numbersArray[position] == 4 {
            numbersLabel.textColor = UIColor.orange
        } else {
            numbersLabel.textColor = UIColor.green
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namesLabel.text = "Ready?"
    }


}

