//
//  ViewController.swift
//  ColdCall
//
//  Created by admin on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var namesLabel: UILabel!
    
    let namesArray: [String] = ["Jimmy", "Cody", "Bryant", "Royta", "Jay"]

    
    @IBAction func coldCallPressed(_ sender: UIButton) {
        let position = Int.random(in: 0..<5)
        namesLabel.text = "\(namesArray[position])"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namesLabel.text = "Ready?"
    }


}

