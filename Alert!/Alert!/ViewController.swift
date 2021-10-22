//
//  ViewController.swift
//  Alert!
//
//  Created by Minh To on 2021-10-15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resutsLbl: UILabel!
    @IBOutlet weak var passwordResetLbl: UILabel!
    
    let alertBox = UIAlertController(title: "Just wanted to say hi!", message: "Hello", preferredStyle: .alert)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertBox.addAction(UIAlertAction(title:"Default", style: .default, handler: nil))
        alertBox.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alertBox.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: nil))
        alertBox.addAction(UIAlertAction(title: "Push me!", style: .default, handler: {
            action in
            
        }))
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: Any) {
    
        self.present(alertBox, animated: true)
    }
    @IBAction func resetPasswordPressed(_ sender: Any) {
    }
    
}

