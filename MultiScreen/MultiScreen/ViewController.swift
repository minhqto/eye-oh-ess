//
//  ViewController.swift
//  MultiScreen
//
//  Created by Minh To on 2021-11-07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var dogNameTextField: UITextField!
    @IBOutlet weak var breedTextLabel: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPressed(_ sender: Any) {
        //programmatically accesses the detailedScreen object from the storyboard
        guard let screen2 = storyboard?.instantiateViewController(identifier: "detailedScreen") as? DetailedViewController else {
                return
            }
        
        let dog = Dog(_name: dogNameTextField.text!, _breed: breedTextLabel.text!)
        screen2.user = User(_username: usernameTextField.text!, _email: emailTextField.text!, _age: Int(ageTextField.text!)!, _dog: dog)
        show(screen2, sender: self)
    }
    
    @IBAction func btnPressedScreenThree(_ sender: Any) {
        guard let screen3 = storyboard?.instantiateViewController(identifier: "thirdScreen") as? ThirdViewController
        else {
            return
        }
        
        show(screen3, sender: self)
    }
}

