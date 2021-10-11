//
//  ViewController.swift
//  CounterApp
//
//  Created by Minh To on 2021-10-10.
//

import UIKit

class ViewController: UIViewController {
    private var count = 0
    @IBOutlet weak var countLabel: UILabel! //this is an outlet
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.count = Int(countLabel.text!) ?? 1
        self.countLabel.text = String(self.count)
    }
    
    @IBAction func countUpPressed(_ sender: Any) {
        self.count += 1
        countLabel.text = String(self.count)
    }
    
    @IBAction func countDownPressed(_ sender: Any) {
        self.count -= 1
        countLabel.text = String(self.count)
    }
}

