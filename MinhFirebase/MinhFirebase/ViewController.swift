//
//  ViewController.swift
//  MinhFirebase
//
//  Created by Minh To on 2021-12-01.
//

import UIKit
import FirebaseFirestore

class ViewController: UIViewController {

    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getDogPressed(_ sender: Any) {
        db.collection("dogs").getDocuments(completion: {(queryResults, error) -> Void in
            if let err = error {
                print(err)
                return
            }
            
            if let results = queryResults {
                for result in results.documents {
                    print(result.data()["breed"] ?? "nil")
                }
            }
            
            
        })
    }
    
    @IBAction func addDogPressed(_ sender: Any) {
    }
    
}

