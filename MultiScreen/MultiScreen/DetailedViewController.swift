//
//  DetailedViewController.swift
//  MultiScreen
//
//  Created by Minh To on 2021-11-07.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var dogNameLabel: UILabel!
    @IBOutlet weak var dogBreedLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = user?.username!
        emailLabel.text = user?.email!
        let userAge = user?.age
        ageLabel.text = String(userAge!)
        dogNameLabel.text = user?.dog!.name
        dogBreedLabel.text = user?.dog!.breed
    
        let myDog = user?.whereIsMyDog()
        print(myDog!.bark())
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
